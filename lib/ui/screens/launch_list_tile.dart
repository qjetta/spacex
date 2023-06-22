import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex/model/launches_simple_model.dart';

class LaunchListTile extends StatelessWidget {
  const LaunchListTile({
    super.key,
    required this.launch,
    required this.path,
  });
  final LaunchModel launch;
  final String path;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 5,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).primaryColorLight,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      leading: launch.success == null
          ? const Icon(Icons.question_mark)
          : launch.success == true
              ? const Icon(Icons.check)
              : const Icon(Icons.check_box_outline_blank),
      title: Text(launch.name ?? ''),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (launch.dateUtc != null)
            Text(
              '${DateFormat.yMMMd().format(launch.dateUtc!)} ${DateFormat.Hm().format(launch.dateUtc!)}',
            ),
          Text(
            launch.details ?? '',
          ),
        ],
      ),
      onTap: () => context.go('$path?id=${launch.id}'),
    );
  }
}
