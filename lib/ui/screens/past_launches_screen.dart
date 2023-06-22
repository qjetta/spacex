import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/controller/cubit/launches_simple_cubit.dart';
import 'package:spacex/controller/cubit/repository_cubit.dart';
import 'package:spacex/model/launches_query.dart';
import 'package:spacex/model/repository.dart';
import 'package:spacex/ui/screens/launch_list_tile.dart';
import 'package:spacex/ui/screens/launch_screen.dart';

class PastLaunchesScreen extends StatelessWidget {
  const PastLaunchesScreen({Key? key}) : super(key: key);

  static const path = '/past-launches';

  @override
  Widget build(BuildContext context) {
    var repositoryCubit = context.read<RepositoryCubit>();
    Repository repository = repositoryCubit.repository;

    return BlocProvider<LaunchesSimpleCubit>(
      create: (context) {
        LaunchesSimpleCubit cubit = LaunchesSimpleCubit(
          repository: repository,
        );

        cubit.fetchLaunches(
          launchesQuery: LaunchesQuery(
              options: LaunchesQueryOptions(
                limit: 10,
                sort: {'date_utc': SortDirection.desc},
                page: 1,
                select: [
                  'id',
                  'name',
                  'rocket',
                  'details',
                  'date_utc',
                  'success',
                ],
              ),
              queryData: LaunchesQueryData(
                dateQuery: DateQuery(gte: null, lte: DateTime.now().toUtc()),
                rocket: null,
              )),
        );
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
            } else if (state is LaunchesSimpleLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is LaunchesSimpleLoadedState) {
              return ListView.builder(
                //FIXME finish scrolling
                itemCount: state.launchesSimpleModel.launches?.length ?? 0,
                itemBuilder: (context, index) {
                  final launch = state.launchesSimpleModel.launches?[index];
                  if (launch == null) {
                    return const Text('launch is null');
                  }
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
                    child: LaunchListTile(
                      launch: launch,
                      path: '${PastLaunchesScreen.path}/${LaunchScreen.path}',
                    ),
                  );
                },
              );
            } else if (state is LaunchesSimpleErrorState) {
              return Center(
                child: Text(state.message.message),
              );
            } else {
              return const Center(
                child: Text('Unknown state'),
              );
            }
          },
        ),
      ),
    );
  }

  get title => 'past.launches.title'.tr();
}
