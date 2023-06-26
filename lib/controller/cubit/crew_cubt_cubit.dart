import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'crew_cubt_state.dart';

class CrewCubtCubit extends Cubit<CrewCubtState> {
  CrewCubtCubit() : super(CrewCubtInitial());
}
