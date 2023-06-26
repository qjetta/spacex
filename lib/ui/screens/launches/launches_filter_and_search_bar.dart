// ignore_for_file: unused_import

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:spacex/controller/cubit/simple_launches_cubit.dart';
import 'package:spacex/ui/components/ui_helper.dart';
import 'package:spacex/ui/screens/launches/drop_down_sort_attribute.dart';
import 'package:spacex/ui/screens/launches/drop_down_sort_direction.dart';
import 'package:spacex/ui/screens/launches/launches_filter.dart';
import 'package:spacex/ui/screens/launches/launches_search_bar.dart';

class LaunchFilterAndSearchBar extends StatelessWidget {
  const LaunchFilterAndSearchBar({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LaunchesFilter(),
        LaunchesSearchBar(),
      ],
    );
  }
}
