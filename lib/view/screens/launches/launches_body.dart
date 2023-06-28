import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/controller/cubit/simple_launches_cubit.dart';
import 'package:spacex/view/components/error_widget_with_reload.dart';
import 'package:spacex/view/components/ui_helper.dart';
import 'package:spacex/view/components/unknown_cubit_state_error_widget.dart';
import 'package:spacex/view/screens/launches/launch_list_view.dart';
import 'package:spacex/view/screens/launches/launches_sort_and_search_bar.dart';

class LaunchesBody extends StatelessWidget {
  const LaunchesBody({
    required this.path,
    Key? key,
  }) : super(key: key);
  final String path;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SortAndSearchBar(),
        BlocBuilder<SimpleLaunchesCubit, SimpleLaunchesState>(
          builder: (context, state) {
            if (state is SimpleLaunchesInitialState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is SimpleLaunchesLoadedState ||
                state is SimpleLaunchesLoadingState) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: UIHelper.paddingSmall,
                    right: UIHelper.paddingSmall,
                    bottom: UIHelper.paddingSmall,
                  ),
                  child: Container(
                    decoration: UIHelper.getBorderRadiusDecorationOpacity(
                      color: state is SimpleLaunchesLoadingState
                          ? Theme.of(context).primaryColor.withOpacity(0.3)
                          : null,
                    ),
                    child: LaunchListView(path: path),
                  ),
                ),
              );
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
