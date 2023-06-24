// ignore_for_file: unused_import

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:spacex/controller/cubit/simple_launches_cubit.dart';
import 'package:spacex/ui/components/ui_helper.dart';
import 'package:spacex/ui/screens/launches/drop_down_sort_attribute.dart';
import 'package:spacex/ui/screens/launches/drop_down_sort_direction.dart';
import 'package:spacex/ui/screens/launches/launches_search_bar.dart';

class LaunchFilterAndSearchBar extends StatelessWidget {
  const LaunchFilterAndSearchBar({super.key});
  static const double searchButtonSize = 50.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: searchButtonSize + UIHelper.paddingSmall,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 2.0,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: searchButtonSize),
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(
                left: UIHelper.paddingBig,
              ),
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      'launches.sort.title'.tr(),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(width: UIHelper.paddingSmall),
                  const DropDownSortAttribute(),
                  const SizedBox(width: UIHelper.paddingSmall),
                  const DropDownSortDirection(),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            height: searchButtonSize,
            child: const LaunchesSearchBar(),
          )
        ],
      ),
    );
  }
}
