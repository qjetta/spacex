part of 'launches_simple_cubit.dart';

@immutable
abstract class LaunchesSimpleState extends Equatable {
  const LaunchesSimpleState({
    required this.launchesQuery,
    required this.launchesSimpleList,
    required this.hasNext,
  });
  final LaunchesQuery launchesQuery;
  final List<LaunchModel> launchesSimpleList;
  final bool hasNext;

  @override
  List<Object?> get props => [
        launchesQuery,
        launchesSimpleList,
        hasNext,
      ];
}

class LaunchesSimpleInitialState extends LaunchesSimpleState {
  const LaunchesSimpleInitialState({
    required super.launchesQuery,
    required super.launchesSimpleList,
    required super.hasNext,
  });
}

class LaunchesSimpleLoadedState extends LaunchesSimpleState {
  const LaunchesSimpleLoadedState({
    required super.launchesQuery,
    required super.launchesSimpleList,
    required super.hasNext,
  });
}

class LaunchesSimpleLoadingState extends LaunchesSimpleState {
  const LaunchesSimpleLoadingState({
    required super.launchesQuery,
    required super.launchesSimpleList,
    required super.hasNext,
  });
}

class LaunchesSimpleErrorState extends LaunchesSimpleState {
  final SpaceXException message;

  const LaunchesSimpleErrorState({
    required this.message,
    required LaunchesQuery launchesQuery,
    required super.launchesSimpleList,
    required super.hasNext,
  }) : super(launchesQuery: launchesQuery);
  @override
  List<Object?> get props => [
        launchesQuery,
        launchesSimpleList,
        message,
        hasNext,
      ];
}
