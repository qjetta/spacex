part of 'repository_cubit.dart';

@immutable
abstract class RepositoryState {}

class RepositoryInitial extends RepositoryState {}

class RepositoryInitializationError extends RepositoryState {
  RepositoryInitializationError({required this.exception});
  final SpaceXException exception;
}

class RepositoryInitialized extends RepositoryState {}

class RepositoryInitializing extends RepositoryState {}
