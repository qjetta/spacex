import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:spacex/controller/space_x_exception.dart';
import 'package:spacex/model/launch/launch.dart';
import 'package:spacex/model/repository.dart';

part 'launch_state.dart';

class LaunchCubit extends Cubit<LaunchState> {
  LaunchCubit({
    required String id,
    required IRepository repository,
  })  : _repository = repository,
        super(
          LaunchInitial(
            id: id,
          ),
        );
  final IRepository _repository;

  void fetch() async {
    if (state is LaunchLoading) {
      return;
    }
    _emitLoadingState();

    try {
      final Launch launch = await _repository.fetchLaunch(id: state.id);
      _emitLoadedState(launch);
    } on SpaceXException catch (e) {
      _emitErrorState(e);
    } catch (e) {
      _emitErrorState(
        SpaceXException(e.toString()),
      );
    }
  }

  void _emitLoadedState(Launch launch) {
    emit(
      LaunchLoaded(
        launch: launch,
        id: state.id,
      ),
    );
  }

  void _emitErrorState(SpaceXException e) {
    emit(
      LaunchError(
        exception: e,
        id: state.id,
      ),
    );
  }

  void _emitLoadingState() {
    emit(
      LaunchLoading(
        id: state.id,
      ),
    );
  }

  void willPopScope() {
    emit(
      LaunchWillPopScope(
        id: state.id,
      ),
    );
  }
}
