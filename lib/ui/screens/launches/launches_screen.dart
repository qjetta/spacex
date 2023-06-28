import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex/controller/cubit/simple_launches_cubit.dart';
import 'package:spacex/controller/cubit/main_cubit.dart';
import 'package:spacex/controller/go_router.dart';
import 'package:spacex/model/repository.dart';
import 'package:spacex/model/storage.dart';
import 'package:spacex/ui/screens/launches/launches_body.dart';

enum ELaunchesType {
  past,
  upcoming,
}

abstract class LaunchesScreen extends StatefulWidget {
  const LaunchesScreen({
    required this.path,
    required this.launchesType,
    Key? key,
  }) : super(key: key);
  final String path;
  final ELaunchesType launchesType;

  @override
  State<LaunchesScreen> createState() => _LaunchesScreenState();

  get title;
}

class _LaunchesScreenState extends State<LaunchesScreen> {
  @override
  Widget build(BuildContext context) {
    var mainCubit = context.read<MainCubit>();

    IRepository repository = mainCubit.repository;
    Storage storage = mainCubit.storage;

    return BlocProvider<SimpleLaunchesCubit>(
      create: (context) {
        SimpleLaunchesCubit cubit = SimpleLaunchesCubit(
          repository: repository,
          storage: storage,
          launchesType: widget.launchesType,
        );

        cubit.fetchNextPage();
        return cubit;
      },
      child: Builder(builder: (context) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: Text(widget.title),
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
          body: Builder(
            builder: (_) => LaunchesBody(path: widget.path),
          ),
        );
      }),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    FocusManager.instance.primaryFocus?.unfocus();
    super.dispose();
  }
}
