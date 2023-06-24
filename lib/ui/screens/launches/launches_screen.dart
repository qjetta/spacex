import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/controller/cubit/simple_launches_cubit.dart';
import 'package:spacex/controller/cubit/repository_cubit.dart';
import 'package:spacex/model/launches/launches_query.dart';
import 'package:spacex/model/repository.dart';
import 'package:spacex/ui/screens/launches/launches_body.dart';

abstract class LaunchesScreen extends StatelessWidget {
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

    return BlocProvider<SimpleLaunchesCubit>(
      create: (context) {
        SimpleLaunchesCubit cubit = SimpleLaunchesCubit(
          repository: repository,
          launchesQuery: launchesQuery,
        );

        cubit.fetchNextPage();
        return cubit;
      },
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(title),
            actions: [
              IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () => context.read<SimpleLaunchesCubit>().reload(),
              ),
            ],
          ),
          body: Builder(builder: (_) => LaunchesBody(path: path)),
        );
      }),
    );
  }

  get title;
}
