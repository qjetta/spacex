import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/controller/cubit/simple_launches_cubit.dart';
import 'package:spacex/ui/components/error_widget_with_reload.dart';
import 'package:spacex/ui/components/unknown_cubit_state_error_widget.dart';
import 'package:spacex/ui/screens/launches/launch_list_view.dart';
import 'package:spacex/ui/screens/launches/launches_filter_and_search_bar.dart';

class CrewBody extends StatelessWidget {
  const CrewBody({required this.path, Key? key}) : super(key: key);
  final String path;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LaunchFilterAndSearchBar(),
        BlocBuilder<SimpleLaunchesCubit, SimpleLaunchesState>(
          builder: (context, state) {
            if (state is SimpleLaunchesInitialState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is SimpleLaunchesLoadedState ||
                state is SimpleLaunchesLoadingState) {
              return Expanded(child: LaunchListView(path: path));
            } else if (state is SimpleLaunchesErrorState) {
              return ErrorWidgetWithReload(
                onPressed: () => context.read<SimpleLaunchesCubit>().reload(),
                exception: state.exception,
              );
            } else {
              return UnknownCubitStateErrorWidget(
                stateRuntimeType: state.runtimeType,
              );
            }
          },
        ),
      ],
    );
  }
}
