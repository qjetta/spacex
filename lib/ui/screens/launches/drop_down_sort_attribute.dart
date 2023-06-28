import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/controller/cubit/simple_launches_cubit.dart';

class DropDownSortAttribute extends StatelessWidget {
  const DropDownSortAttribute({super.key});
  static const list = <String>[
    'date_utc',
    'launchpad',
    'name',
    'rocket',
    'success',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimpleLaunchesCubit, SimpleLaunchesState>(
      builder: (context, state) {
        return DropdownButton<String>(
          value: state.launchesQuery.options?.sort?.entries.first.key,
          elevation: 16,
          onChanged: (String? newValue) =>
              context.read<SimpleLaunchesCubit>().sortBy(newValue),
          items: list.map<DropdownMenuItem<String>>(
            (String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text('launches.sort.$value'.tr()),
              );
            },
          ).toList(),
        );
      },
    );
  }
}
