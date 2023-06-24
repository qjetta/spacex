import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacex/controller/cubit/simple_launches_cubit.dart';

class DropDownSortDirection extends StatelessWidget {
  const DropDownSortDirection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimpleLaunchesCubit, SimpleLaunchesState>(
      builder: (context, state) => DropdownButton<String>(
        value: state.launchesQuery.options?.sort?.entries.first.value.name,
        elevation: 16,
        onChanged: (String? newValue) =>
            context.read<SimpleLaunchesCubit>().sortDirection(newValue),
        items: <String>['asc', 'desc']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              'launches.sort.type.$value'.tr(),
            ),
          );
        }).toList(),
      ),
    );
  }
}
