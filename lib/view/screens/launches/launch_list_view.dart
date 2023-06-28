import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/controller/cubit/simple_launches_cubit.dart';
import 'package:spacex/controller/go_router.dart';
import 'package:spacex/view/screens/launches/launch_list_tile.dart';

class LaunchListView extends StatelessWidget {
  const LaunchListView({Key? key, required this.path}) : super(key: key);
  static const loadNextNRecBeforeEnd = 1;
  static const launchesListViewKey = 'launchesListViewKey';
  final String path;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimpleLaunchesCubit, SimpleLaunchesState>(
      builder: (context, state) {
        return ListView.builder(
          key: const Key(launchesListViewKey),
          itemCount:
              state.launchesSimpleList.length + (state.hasNext == true ? 1 : 0),
          itemBuilder: (context, index) {
            fetchNextIfNeeded(state, index, context);

            if (index < state.launchesSimpleList.length) {
              final launch = state.launchesSimpleList[index];
              return LaunchListTile(
                launch: launch,
                path: '$path/${Navigation.launch}/${launch.id}',
              );
            } else {
              //if not all loaded => show loading indicator
              return const Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
          },
        );
      },
    );
  }

  void fetchNextIfNeeded(
      SimpleLaunchesState state, int index, BuildContext context) {
    int? length = state.launchesSimpleList.length;
    if (index == length - loadNextNRecBeforeEnd) {
      context.read<SimpleLaunchesCubit>().fetchNextPage();
    }
  }
}
