import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/controller/cubit/launch_cubit.dart';
import 'package:spacex/controller/cubit/repository_cubit.dart';
import 'package:spacex/ui/components/error_widget_with_reload.dart';
import 'package:spacex/ui/components/unknown_cubit_state_error_widget.dart';
import 'package:spacex/ui/screens/launch/launch_body_widget.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({
    required this.id,
    Key? key,
  }) : super(key: key);
  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LaunchCubit>(
      create: (context) {
        var launchCubit = LaunchCubit(
          repository: context.read<RepositoryCubit>().repository,
          id: id,
        );
        launchCubit.fetch();
        return launchCubit;
      },
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(title),
            actions: [
              IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () => context.read<LaunchCubit>().fetch(),
              ),
            ],
          ),
          body: Center(
            child: BlocBuilder<LaunchCubit, LaunchState>(
              builder: (context, state) {
                if (state is LaunchInitial) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is LaunchLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is LaunchLoaded) {
                  var launchBodyWidget = LaunchBodyWidget(
                    launch: state.launch,
                  );

                  return launchBodyWidget;
                }
                if (state is LaunchError) {
                  return ErrorWidgetWithReload(
                    onPressed: () => context.read<LaunchCubit>().fetch(),
                    exception: state.exception,
                  );
                }
                return UnknownCubitStateErrorWidget(
                  stateRuntimeType: state.runtimeType,
                );
              },
            ),
          ),
        );
      }),
    );
  }

  get title => 'launch.title'.tr();
}
