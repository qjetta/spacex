import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:spacex/controller/cubit/simple_launches_cubit.dart';

class LaunchesSearchBar extends HookWidget {
  const LaunchesSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO : add default value for text
    var defaultSearedText = context
            .read<SimpleLaunchesCubit>()
            .state
            .launchesQuery
            .queryData
            ?.name
            ?.regex ??
        'x';
    final searchTextController =
        useTextEditingController(text: defaultSearedText);

    return AnimSearchBar(
      onSubmitted: (value) =>
          context.read<SimpleLaunchesCubit>().searchByText(value),
      textController: searchTextController,
      onSuffixTap: () => context.read<SimpleLaunchesCubit>().searchByText(''),
      width: 300,
      boxShadow: true,
      searchIconColor: Theme.of(context).primaryColor,
      helpText: 'launches.search_bar.help_text'.tr(),
      rtl: true,
    );
  }
}
