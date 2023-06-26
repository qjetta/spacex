// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex/controller/cubit/simple_launches_cubit.dart';
import 'package:spacex/controller/cubit/repository_cubit.dart';
import 'package:spacex/controller/go_router.dart';
import 'package:spacex/model/launches/launches_query.dart';
import 'package:spacex/model/repository.dart';
import 'package:spacex/ui/screens/launches/launches_body.dart';

enum ELaunchesType {
  past,
  upcoming,
}

abstract class LaunchesScreen extends StatelessWidget {
  const LaunchesScreen({
    required this.path,
    required this.launchesType,
    Key? key,
  }) : super(key: key);
  final String path;
  final ELaunchesType launchesType;

  @override
  Widget build(BuildContext context) {
    var repositoryCubit = context.read<RepositoryCubit>();

    Repository repository = repositoryCubit.repository;
    Storage storage = repositoryCubit.storage;

    return BlocProvider<SimpleLaunchesCubit>(
      create: (context) {
        SimpleLaunchesCubit cubit = SimpleLaunchesCubit(
          repository: repository,
          storage: storage,
          launchesType: launchesType,
        );

        cubit.fetchNextPage();
        return cubit;
      },
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(title),
            leading: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () => context.go(Navigation.home),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () => context.read<SimpleLaunchesCubit>().reload(),
              ),
            ],
          ),
          body: Builder(builder: (_) => CrewBody(path: path)),
        );
      }),
    );
  }

  get title;
}
