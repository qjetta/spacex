import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:spacex/main.dart';
import 'package:spacex/model/storage.dart';
import 'package:spacex/controller/space_x_exception.dart';
import 'package:spacex/model/launches/launches_query.dart';
import 'package:spacex/model/launches/launches_simple_model.dart';
import 'package:spacex/model/repository.dart';
import 'package:spacex/view/screens/launches/launches_screen.dart';
import 'package:synchronized/synchronized.dart';

part 'simple_launches_state.dart';

typedef CopyWithTextFilter<T> = T Function(T source, String? text);

class SimpleLaunchesCubit extends Cubit<SimpleLaunchesState> {
  SimpleLaunchesCubit({
    required repository,
    required this.storage,
    required this.launchesType,
  })  : _repository = repository,
        super(
          SimpleLaunchesInitialState(
            launchesQuery: storage.getDefaultQuery(launchesType),
            launchesSimpleList: const [],
            hasNext: true,
          ),
        );

  final IRepository _repository;
  final Storage storage;
  final ELaunchesType launchesType;
  static const test = false;
  final _lock = Lock();
  LaunchesQuery? _queryInQueue;

  void fetchNextPage() {
    _fetchNextPage(
      launchesQuery: state.launchesQuery,
      loadingStateEmitted: false,
    );
  }

  reload() {
    if (state is SimpleLaunchesLoadingState) {
      return;
    }
    _fetchNextPage(
      launchesQuery: state.launchesQuery.copyWith(),
      loadingStateEmitted: false,
    );
  }

  Future<void> searchByText(String text) async {
    adjustQuery(text, (source, text) => _copyWithTextFilter(source, text));
  }

  Future<void> sortBy(String? attributeName) async {
    adjustQuery(attributeName, (source, text) => _copyWithSortBy(source, text));
  }

  Future<void> sortDirection(String? direction) async {
    adjustQuery(
        direction, (source, text) => _copyWithSortDirection(source, text));
  }

  void _fetchNextPage({
    required LaunchesQuery launchesQuery,
    required bool loadingStateEmitted,
  }) async {
    LaunchesQuery? newLaunchesQuery;
    try {
      if (!loadingStateEmitted) {
        if (state is SimpleLaunchesLoadingState) {
          return;
        }

        if (state is SimpleLaunchesInitialState) {
          newLaunchesQuery = await storage.loadLaunchesQuery(launchesType);
          var loadedLaunches = await storage.loadLaunches(launchesType);
          emit(
            SimpleLaunchesLoadingState(
                launchesQuery: newLaunchesQuery,
                launchesSimpleList: loadedLaunches?.launches ?? const [],
                hasNext: true),
          );
          if (test) await Future.delayed(const Duration(seconds: 15));
        } else {
          newLaunchesQuery = launchesQuery;
          _emitLoadingState(launchesQuery);
        }

        if (_emitLoadedForNoNextPage(newLaunchesQuery)) {
          return;
        }
      } else {
        newLaunchesQuery = launchesQuery;
      }

      await _fetchDataAndEmitLoaded(newLaunchesQuery);
    } on SpaceXException catch (e) {
      _emitErrorState(e, newLaunchesQuery ?? launchesQuery);
    } on Exception catch (e) {
      _emitErrorState(
        SpaceXException(
          e.toString(),
        ),
        newLaunchesQuery ?? launchesQuery,
      );
    }
  }

  Future<void> _fetchDataAndEmitLoaded(
      LaunchesQuery currentLaunchesQuery) async {
    List<SimpleLaunch> newList = [];
    var newLaunchesQuery = currentLaunchesQuery;

    if (state.launchesQuery.options == null) {
      //it should no normally happen
      var defaultLaunchesType = storage.getDefaultQuery(launchesType);
      newLaunchesQuery = currentLaunchesQuery.copyWith(
        options: defaultLaunchesType.options,
      );
    }

    if (state.launchesQuery.options?.page != 0) {
      newList.addAll(state.launchesSimpleList);
    }

    logger.i('before fetchLaunches: $newLaunchesQuery');
    final SimpleLaunches loadedLaunches = await _repository.fetchLaunches(
      query: newLaunchesQuery,
    );
    logger.i('after fetchLaunches: $newLaunchesQuery');
    if (state.launchesQuery.options?.page == 0) {
      storage.saveLaunches(loadedLaunches, launchesType);
    }

    if (loadedLaunches.launches != null) {
      newList.addAll(loadedLaunches.launches!);
    }

    bool loadNext = await _emitLoadedState(
      newLaunchesQuery,
      newList,
      loadedLaunches,
    );
    if (loadNext) {
      _fetchNextPage(
        launchesQuery: state.launchesQuery,
        loadingStateEmitted: true,
      );
    }
  }

  /// @return true if fetch should run again
  Future<bool> _emitLoadedState(LaunchesQuery currentLaunchesQuery,
      List<SimpleLaunch> newList, SimpleLaunches loadedLaunches) async {
    await _lock.synchronized(() async {
      logger.d('sync emitLoadedState IN');
      //create new state
      var simpleLaunchesLoadedState = SimpleLaunchesLoadedState(
        launchesQuery: currentLaunchesQuery.copyWith(
          options: currentLaunchesQuery.options?.copyWith(
            page: currentLaunchesQuery.options?.page == null
                ? 0
                : currentLaunchesQuery.options!.page! + 1,
          ),
        ),
        launchesSimpleList: newList,
        hasNext: loadedLaunches.hasNextPage ?? false,
      );

      if (_queryInQueue != null) {
        //if necessary emit new loading state
        emit(
          SimpleLaunchesLoadingState(
            launchesSimpleList: simpleLaunchesLoadedState.launchesSimpleList,
            hasNext: simpleLaunchesLoadedState.hasNext,
            launchesQuery: currentLaunchesQuery.copyWith(
              options: _queryInQueue?.options,
              queryData: _queryInQueue?.queryData,
            ),
          ),
        );
        _queryInQueue = null;
        return Future.value(true);
      } else {
        //emit loaded state
        emit(
          simpleLaunchesLoadedState,
        );
      }
      logger.d('sync emitLoadedState OUT');
    });
    return Future.value(false);
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

  Future<void> adjustQuery(
    String? text,
    CopyWithTextFilter<LaunchesQuery> baseQuery,
  ) async {
    LaunchesQuery? launchesQuery;
    await _lock.synchronized(() async {
      logger.d('sync adjustQuery: $text IN');
      if (state is SimpleLaunchesLoadingState) {
        logger.d('$text added in the queue');
        if (_queryInQueue != null) {
          _queryInQueue = baseQuery(_queryInQueue!, text);
        } else {
          _queryInQueue = baseQuery(state.launchesQuery, text);
        }
        return;
      } else {
        launchesQuery = baseQuery(state.launchesQuery, text);
        _emitLoadingState(
          launchesQuery!,
        );
      }
      logger.d('sync adjustQuery: $text OUT');
    });

    launchesQuery ??= baseQuery(state.launchesQuery, text);

    _saveLaunchesQuery(launchesQuery!);
    _fetchNextPage(
      launchesQuery: launchesQuery!,
      loadingStateEmitted: true,
    );
  }

  Future<void> _saveLaunchesQuery(LaunchesQuery launchesQuery) async {
    await storage.saveLaunchesQuery(launchesQuery, launchesType);
  }

  LaunchesQuery _copyWithTextFilter(LaunchesQuery launchesQuery, String? text) {
    logger.d('old filter name:${state.launchesQuery}');

    var launchesQueryData = launchesQuery.queryData;
    launchesQueryData ??= LaunchesQueryData(
      name: NameFilter(
        regex: text,
        options: 'i',
      ),
    );
    var launchesQueryNew = state.launchesQuery.copyWith(
      queryData: launchesQueryData.copyWith(
          name: NameFilter(
        regex: text,
        options: 'i',
      )),
      options: state.launchesQuery.options?.copyWith(
        page: 0,
      ),
    );
    logger.d('new filter name: $launchesQueryNew');
    return launchesQueryNew;
  }

  LaunchesQuery _copyWithSortBy(
    LaunchesQuery launchesQuery,
    String? attributeName,
  ) {
    return launchesQuery.copyWith(
      options: launchesQuery.options?.copyWith(
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
  }

  LaunchesQuery _copyWithSortDirection(
      LaunchesQuery launchesQuery, String? direction) {
    var oldSortKey = state.launchesQuery.options?.sort?.entries.first.key;
    return launchesQuery.copyWith(
      options: launchesQuery.options?.copyWith(
        sort: direction == null
            ? null
            : {
                oldSortKey ?? 'date_utc': ESortDirection.values.firstWhere(
                    (e) => e.toString() == 'ESortDirection.$direction')
              },
        page: 0,
      ),
    );
  }
}
