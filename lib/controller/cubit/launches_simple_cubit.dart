import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:spacex/controller/space_x_exception.dart';
import 'package:spacex/model/launches_query.dart';
import 'package:spacex/model/launches_simple_model.dart';
import 'package:spacex/model/repository.dart';

part 'launches_simple_state.dart';

class LaunchesSimpleCubit extends Cubit<LaunchesSimpleState> {
  LaunchesSimpleCubit({required repository})
      : _repository = repository,
        super(LaunchesSimpleInitialState());
  final Repository _repository;

  void fetchLaunches({required LaunchesQuery launchesQuery}) async {
    emit(LaunchesSimpleLoadingState());
    try {
      final launches = await _repository.fetchLaunches(
        query: launchesQuery,
      );
      emit(
        LaunchesSimpleLoadedState(launches),
      );
    } on SpaceXException catch (e) {
      emit(LaunchesSimpleErrorState(e));
    } on Exception catch (e) {
      emit(LaunchesSimpleErrorState(
        SpaceXException(e.toString()),
      ));
    }
  }
}
