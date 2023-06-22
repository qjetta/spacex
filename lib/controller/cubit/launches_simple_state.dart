part of 'launches_simple_cubit.dart';

@immutable
abstract class LaunchesSimpleState extends Equatable {}

class LaunchesSimpleInitialState extends LaunchesSimpleState {
  @override
  List<Object?> get props => [];
}

class LaunchesSimpleLoadedState extends LaunchesSimpleState {
  final LaunchesSimpleModel launchesSimpleModel;

  LaunchesSimpleLoadedState(this.launchesSimpleModel);
  @override
  List<Object?> get props => [launchesSimpleModel];
}

class LaunchesSimpleLoadingState extends LaunchesSimpleState {
  @override
  List<Object?> get props => [];
}

class LaunchesSimpleErrorState extends LaunchesSimpleState {
  final SpaceXException message;

  LaunchesSimpleErrorState(this.message);
  @override
  List<Object?> get props => [message];
}
