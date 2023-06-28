part of 'main_cubit.dart';

@immutable
abstract class MainState {}

class MainInitialState extends MainState {}

class MainInitializationErrorState extends MainState {
  MainInitializationErrorState({required this.exception});
  final SpaceXException exception;
}

class MainInitialized extends MainState {}

class MainInitializing extends MainState {}
