part of 'simple_launches_cubit.dart';

@immutable
abstract class SimpleLaunchesState extends Equatable {
  const SimpleLaunchesState({
    required this.launchesQuery,
    required this.launchesSimpleList,
    required this.hasNext,
  });
  final LaunchesQuery launchesQuery;
  final List<SimpleLaunch> launchesSimpleList;
  final bool hasNext;

  @override
  List<Object?> get props => [
        launchesQuery,
        launchesSimpleList,
        hasNext,
      ];
}

class SimpleLaunchesInitialState extends SimpleLaunchesState {
  const SimpleLaunchesInitialState({
    required super.launchesQuery,
    required super.launchesSimpleList,
    required super.hasNext,
  });
}

class SimpleLaunchesLoadedState extends SimpleLaunchesState {
  const SimpleLaunchesLoadedState({
    required super.launchesQuery,
    required super.launchesSimpleList,
    required super.hasNext,
  });
}

class SimpleLaunchesLoadingState extends SimpleLaunchesState {
  const SimpleLaunchesLoadingState({
    required super.launchesQuery,
    required super.launchesSimpleList,
    required super.hasNext,
  });
}

class SimpleLaunchesErrorState extends SimpleLaunchesState {
  final SpaceXException exception;

  const SimpleLaunchesErrorState({
    required this.exception,
    required LaunchesQuery launchesQuery,
    required super.launchesSimpleList,
    required super.hasNext,
  }) : super(launchesQuery: launchesQuery);
  @override
  List<Object?> get props => [
        launchesQuery,
        launchesSimpleList,
        exception,
        hasNext,
      ];
}
