import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:spacex/controller/space_x_exception.dart';
import 'package:spacex/model/crew/crew.dart';
import 'package:spacex/model/repository.dart';

part 'crew_state.dart';

class CrewCubit extends Cubit<CrewState> {
  CrewCubit({required this.repository}) : super(CrewInitial());

  final Repository repository;

  Future<void> fetch() async {
    try {
      if (state is CrewLoading) return;

      emit(CrewLoading());

      Crew crew = await repository.fetchCrew();
      emit(CrewLoadedState(crew: crew));
    } on SpaceXException catch (e) {
      emit(CrewErrorState(exception: e));
    } on Exception catch (e) {
      emit(CrewErrorState(exception: SpaceXException(e.toString())));
    }
  }
}
