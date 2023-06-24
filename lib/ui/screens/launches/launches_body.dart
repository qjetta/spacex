import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/controller/cubit/simple_launches_cubit.dart';
import 'package:spacex/ui/screens/launches/launch_list_view.dart';
import 'package:spacex/ui/screens/launches/launches_filter_and_search_bar.dart';

class LaunchesBody extends StatelessWidget {
  const LaunchesBody({required this.path, Key? key}) : super(key: key);
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
              return Center(
                child: Column(
                  children: [
                    Text(state.message.message),
                    ElevatedButton(
                      onPressed: () =>
                          context.read<SimpleLaunchesCubit>().reload(),
                      child: const Icon(Icons.refresh),
                    ),
                  ],
                ),
              );
            } else {
              return Center(
                child: const Text('error.unknown_state').tr(
                  namedArgs: {'state': state.runtimeType.toString()},
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
