import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:spacex/controller/cubit/simple_launches_cubit.dart';
import 'package:spacex/ui/components/ui_helper.dart';

class LaunchesSearchBar extends HookWidget {
  const LaunchesSearchBar({super.key});
  static const searchBarKey = 'searchBarKey';

  @override
  Widget build(BuildContext context) {
    bool loadedFilter = false;
    final searchTextController = useTextEditingController();

    return BlocListener<SimpleLaunchesCubit, SimpleLaunchesState>(
      listener: (context, state) {
        if (!loadedFilter && state is SimpleLaunchesLoadedState) {
          var defaultSearedText = context
                  .read<SimpleLaunchesCubit>()
                  .state
                  .launchesQuery
                  .queryData
                  ?.name
                  ?.regex ??
              '';
          searchTextController.text = defaultSearedText;
          loadedFilter = true;
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(UIHelper.paddingSmall),
        child: SearchBar(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(UIHelper.borderRadius),
            ),
          ),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.all(0),
          ),
          controller: searchTextController,
          onChanged: (value) =>
              context.read<SimpleLaunchesCubit>().searchByText(value),
          hintText: 'Name filter',
          leading: const IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
          ),
          trailing: [
            IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  context.read<SimpleLaunchesCubit>().searchByText('');
                  searchTextController.clear();
                })
          ],
        ),
      ),
    );
  }
}
