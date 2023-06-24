import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/controller/cubit/launches_simple_cubit.dart';
import 'package:spacex/controller/cubit/repository_cubit.dart';
import 'package:spacex/model/launches/launches_query.dart';
import 'package:spacex/model/repository.dart';
import 'package:spacex/ui/screens/launch_list_tile.dart';
import 'package:spacex/ui/screens/launch_screen.dart';

abstract class LaunchesScreen extends StatelessWidget {
  static const loadNextNRecBeforeEnd = 1;

  const LaunchesScreen({
    required this.path,
    required this.launchesQuery,
    Key? key,
  }) : super(key: key);
  final String path;
  final LaunchesQuery launchesQuery;

  @override
  Widget build(BuildContext context) {
    var repositoryCubit = context.read<RepositoryCubit>();
    Repository repository = repositoryCubit.repository;

    return BlocProvider<LaunchesSimpleCubit>(
      create: (context) {
        LaunchesSimpleCubit cubit = LaunchesSimpleCubit(
          repository: repository,
          launchesQuery: launchesQuery,
        );

        cubit.fetchNextLaunches();
        return cubit;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: BlocBuilder<LaunchesSimpleCubit, LaunchesSimpleState>(
          builder: (context, state) {
            if (state is LaunchesSimpleInitialState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is LaunchesSimpleLoadedState ||
                state is LaunchesSimpleLoadingState) {
              return createListViewBuilder(state);
            } else if (state is LaunchesSimpleErrorState) {
              return Center(
                child: Text(state.message.message),
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
      ),
    );
  }

  ListView createListViewBuilder(LaunchesSimpleState state) {
    return ListView.builder(
      itemCount:
          state.launchesSimpleList.length + (state.hasNext == true ? 1 : 0),
      itemBuilder: (context, index) {
        fetchNextIfNeeded(state, index, context);

        if (index < state.launchesSimpleList.length) {
          final launch = state.launchesSimpleList[index];
          return LaunchListTile(
            launch: launch,
            path: '$path/${LaunchScreen.path}',
          );
        } else {
          return const Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }

  void fetchNextIfNeeded(
      LaunchesSimpleState state, int index, BuildContext context) {
    int? length = state.launchesSimpleList.length;
    if (index == length - loadNextNRecBeforeEnd) {
      context.read<LaunchesSimpleCubit>().fetchNextLaunches();
    }
  }

  get title;
}
