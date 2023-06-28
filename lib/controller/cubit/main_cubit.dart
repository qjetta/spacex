import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:spacex/model/storage.dart';
import 'package:spacex/controller/space_x_exception.dart';
import 'package:spacex/model/repository.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  final IRepository repository;
  final Storage storage;

  MainCubit({required this.repository, required this.storage})
      : super(MainInitialState());

  init() async {
    emit(MainInitializing());
    try {
      await repository.init();
      emit(MainInitialized());
    } on SpaceXException catch (e) {
      emit(MainInitializationErrorState(exception: e));
    } catch (e) {
      emit(
        MainInitializationErrorState(exception: SpaceXException(e.toString())),
      );
    }
  }
}
