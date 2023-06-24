import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:spacex/controller/space_x_exception.dart';
import 'package:spacex/model/launches_query.dart';
import 'package:spacex/model/launches_simple_model.dart';
import 'package:spacex/model/repository.dart';

part 'launches_simple_state.dart';

class LaunchesSimpleCubit extends Cubit<LaunchesSimpleState> {
  LaunchesSimpleCubit({
    required repository,
    required LaunchesQuery launchesQuery,
  })  : _repository = repository,
        super(
          LaunchesSimpleInitialState(
            launchesQuery: launchesQuery,
            launchesSimpleList: const [],
            hasNext: true,
          ),
        );
  final IRepository _repository;

  void fetchNextLaunches() async {
    if (state is LaunchesSimpleLoadingState || !state.hasNext) {
      return;
    }
    emit(LaunchesSimpleLoadingState(
      launchesQuery: state.launchesQuery,
      launchesSimpleList: state.launchesSimpleList,
      hasNext: state.hasNext,
    ));
    try {
      final LaunchesSimpleModel loadedLaunches =
          await _repository.fetchLaunches(
        query: state.launchesQuery,
      );

      List<LaunchModel> newList = [];
      newList.addAll(state.launchesSimpleList);
      if (loadedLaunches.launches != null) {
        newList.addAll(loadedLaunches.launches!);
      }

      emit(
        LaunchesSimpleLoadedState(
          launchesQuery: state.launchesQuery.copyWith(
            options: state.launchesQuery.options?.copyWith(
              page: state.launchesQuery.options?.page == null
                  ? 0
                  : state.launchesQuery.options!.page! + 1,
            ),
          ),
          launchesSimpleList: newList,
          hasNext: loadedLaunches.hasNextPage ?? false,
        ),
      );
    } on SpaceXException catch (e) {
      emit(LaunchesSimpleErrorState(
        message: e,
        launchesQuery: state.launchesQuery,
        launchesSimpleList: state.launchesSimpleList,
        hasNext: state.hasNext,
      ));
    } on Exception catch (e) {
      emit(LaunchesSimpleErrorState(
        message: SpaceXException(
          e.toString(),
        ),
        launchesQuery: state.launchesQuery,
        launchesSimpleList: state.launchesSimpleList,
        hasNext: state.hasNext,
      ));
    }
  }
}
