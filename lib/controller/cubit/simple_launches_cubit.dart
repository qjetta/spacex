import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:spacex/controller/space_x_exception.dart';
import 'package:spacex/model/launches/launches_query.dart';
import 'package:spacex/model/launches/launches_simple_model.dart';
import 'package:spacex/model/repository.dart';

part 'simple_launches_state.dart';

class SimpleLaunchesCubit extends Cubit<SimpleLaunchesState> {
  SimpleLaunchesCubit({
    required repository,
    required LaunchesQuery launchesQuery,
  })  : _repository = repository,
        super(
          SimpleLaunchesInitialState(
            launchesQuery: launchesQuery,
            launchesSimpleList: const [],
            hasNext: true,
          ),
        );

  final IRepository _repository;

  void fetchNextPage() {
    _fetchNextPage(state.launchesQuery);
  }

  void searchByText(String text) {
    if (state is SimpleLaunchesLoadingState) {
      return;
    }
    LaunchesQuery launchesQuery = state.launchesQuery.copyWith(
      queryData: state.launchesQuery.queryData?.copyWith(
          name: NameFilter(
        regex: text,
        options: 'i',
      )),
      options: state.launchesQuery.options?.copyWith(
        page: 0,
      ),
    );
    _fetchNextPage(launchesQuery);
  }

  reload() {
    if (state is SimpleLaunchesLoadingState) {
      return;
    }
    _fetchNextPage(state.launchesQuery.copyWith());
  }

  void sortBy(String? attributeName) {
    if (state is SimpleLaunchesLoadingState) {
      return;
    }
    LaunchesQuery launchesQuery = state.launchesQuery.copyWith(
      options: state.launchesQuery.options?.copyWith(
        sort: attributeName == null
            ? null
            : {
                attributeName:
                    state.launchesQuery.options?.sort?.entries.first.value ??
                        ESortDirection.asc
              },
        page: 0,
      ),
    );
    _fetchNextPage(launchesQuery);
  }

  void sortDirection(String? direction) {
    if (state is SimpleLaunchesLoadingState) {
      return;
    }
    var oldSortKey = state.launchesQuery.options?.sort?.entries.first.key;
    LaunchesQuery launchesQuery = state.launchesQuery.copyWith(
      options: state.launchesQuery.options?.copyWith(
        sort: direction == null
            ? null
            : {
                oldSortKey ?? 'date_utc': ESortDirection.values.firstWhere(
                    (e) => e.toString() == 'ESortDirection.$direction')
              },
        page: 0,
      ),
    );
    _fetchNextPage(launchesQuery);
  }

  void _fetchNextPage(
    LaunchesQuery currentLaunchesQuery,
  ) async {
    if (state is SimpleLaunchesLoadingState) {
      return;
    }
    _emitLoadingState(currentLaunchesQuery);

    //it must be checked after emit SimpleLaunchesLoadingState
    if (_emitLoadedForNoNextPage(currentLaunchesQuery)) {
      return;
    }

    try {
      await _fetchDataAndEmitLoaded(currentLaunchesQuery);
    } on SpaceXException catch (e) {
      _emitErrorState(e, currentLaunchesQuery);
    } on Exception catch (e) {
      _emitErrorState(
        SpaceXException(
          e.toString(),
        ),
        currentLaunchesQuery,
      );
    }
  }

  Future<void> _fetchDataAndEmitLoaded(
      LaunchesQuery currentLaunchesQuery) async {
    List<SimpleLaunch> newList = [];
    var newLaunchesQuery = currentLaunchesQuery;
    if (state.launchesQuery.options?.page != 0) {
      newList.addAll(state.launchesSimpleList);
    }

    final SimpleLaunches loadedLaunches = await _repository.fetchLaunches(
      query: newLaunchesQuery,
    );

    if (loadedLaunches.launches != null) {
      newList.addAll(loadedLaunches.launches!);
    }

    _emitLoadedState(
      currentLaunchesQuery,
      newList,
      loadedLaunches,
    );
  }

  void _emitLoadedState(LaunchesQuery currentLaunchesQuery,
      List<SimpleLaunch> newList, SimpleLaunches loadedLaunches) {
    return emit(
      SimpleLaunchesLoadedState(
        launchesQuery: currentLaunchesQuery.copyWith(
          options: currentLaunchesQuery.options?.copyWith(
            page: currentLaunchesQuery.options?.page == null
                ? 0
                : currentLaunchesQuery.options!.page! + 1,
          ),
        ),
        launchesSimpleList: newList,
        hasNext: loadedLaunches.hasNextPage ?? false,
      ),
    );
  }

  void _emitLoadingState(LaunchesQuery currentLaunchesQuery) {
    if (currentLaunchesQuery.options?.page == 0) {
      SimpleLaunchesLoadingState newLaunchesState = SimpleLaunchesLoadingState(
        launchesQuery: currentLaunchesQuery,
        launchesSimpleList: const [],
        hasNext: true,
      );
      emit(newLaunchesState);
    } else {
      emit(SimpleLaunchesLoadingState(
        launchesQuery: currentLaunchesQuery,
        launchesSimpleList: state.launchesSimpleList.toList(),
        hasNext: state.hasNext,
      ));
    }
  }

  void _emitErrorState(SpaceXException e, LaunchesQuery currentLaunchesQuery) {
    return emit(
      SimpleLaunchesErrorState(
        exception: e,
        launchesQuery: currentLaunchesQuery.copyWith(),
        launchesSimpleList: state.launchesSimpleList.toList(),
        hasNext: state.hasNext,
      ),
    );
  }

  bool _emitLoadedForNoNextPage(LaunchesQuery currentLaunchesQuery) {
    if (!state.hasNext) {
      emit(
        SimpleLaunchesLoadedState(
          launchesQuery: currentLaunchesQuery.copyWith(),
          launchesSimpleList: state.launchesSimpleList.toList(),
          hasNext: false,
        ),
      );
      return true;
    }
    return false;
  }
}
