import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex/controller/cubit/crew_cubit.dart';
import 'package:spacex/controller/cubit/main_cubit.dart';
import 'package:spacex/controller/go_router.dart';
import 'package:spacex/model/repository.dart';
import 'package:spacex/ui/screens/crew/crew_body_widget.dart';

class CrewScreen extends StatelessWidget {
  const CrewScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var repositoryCubit = context.read<MainCubit>();
    IRepository repository = repositoryCubit.repository;

    return BlocProvider<CrewCubit>(
      create: (context) {
        CrewCubit cubit = CrewCubit(
          repository: repository,
        );

        cubit.fetch();
        return cubit;
      },
      child: Builder(builder: (context) {
        return WillPopScope(
          onWillPop: () async {
            context.go(Navigation.home);
            return false;
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text(title),
              leading: IconButton(
                icon: const Icon(Icons.home),
                onPressed: () => context.go(Navigation.home),
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () => context.read<CrewCubit>().fetch(),
                ),
              ],
            ),
            body: const CrewBodyWidget(),
          ),
        );
      }),
    );
  }

  get title => 'Crew';
}
