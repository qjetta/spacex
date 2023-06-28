part of 'launch_cubit.dart';

abstract class LaunchState extends Equatable {
  const LaunchState({
    required this.id,
  });
  final String id;

  @override
  List<Object> get props => [id];
}

class LaunchInitial extends LaunchState {
  const LaunchInitial({required super.id});
}

class LaunchLoaded extends LaunchState {
  const LaunchLoaded({
    required this.launch,
    required super.id,
  });
  final Launch launch;
}

class LaunchLoading extends LaunchState {
  const LaunchLoading({required super.id});
}

class LaunchError extends LaunchState {
  const LaunchError({
    required this.exception,
    required super.id,
  });
  final SpaceXException exception;
}
