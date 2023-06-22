// ignore_for_file: unused_import

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:spacex/controller/space_x_exception.dart';
import 'package:spacex/main.dart';
import 'package:spacex/model/repository.dart';

part 'repository_state.dart';

class RepositoryCubit extends Cubit<RepositoryState> {
  final Repository repository;
  RepositoryCubit({required this.repository}) : super(RepositoryInitial());

  init() async {
    emit(RepositoryInitializing());
    try {
      await repository.init();
      emit(RepositoryInitialized());
    } on SpaceXException catch (e) {
      emit(RepositoryInitializationError(exception: e));
    } catch (e) {
      emit(
        RepositoryInitializationError(exception: SpaceXException(e.toString())),
      );
    }
  }
}
