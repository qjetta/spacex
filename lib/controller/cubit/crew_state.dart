part of 'crew_cubit.dart';

abstract class CrewState extends Equatable {
  const CrewState();

  @override
  List<Object> get props => [];
}

class CrewInitial extends CrewState {}

class CrewLoading extends CrewState {}

class CrewErrorState extends CrewState {
  const CrewErrorState({
    required this.exception,
  });
  final SpaceXException exception;
  @override
  List<Object> get props => [
        exception,
      ];
}

class CrewLoadedState extends CrewState {
  const CrewLoadedState({
    required this.crew,
  });
  final Crew crew;

  @override
  List<Object> get props => [
        crew,
      ];
}
