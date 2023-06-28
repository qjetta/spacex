import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex/model/launches/launches_simple_model.dart';
import 'package:spacex/view/components/icon_with_text.dart';
import 'package:spacex/view/components/title_with_background_widget.dart';
import 'package:spacex/view/components/ui_helper.dart';

class LaunchListTile extends StatelessWidget {
  const LaunchListTile({
    super.key,
    required this.launch,
    required this.path,
  });
  final SimpleLaunch launch;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        UIHelper.paddingSmall,
        UIHelper.paddingSmall,
        UIHelper.paddingSmall,
        0,
      ),
      child: ListTile(
        horizontalTitleGap: UIHelper.paddingBig,
        title: TitleWithBackgroundWidget(
          level: 1,
          title: launch.name ?? '',
        ),
        subtitle: createSubtitle(),
        onTap: () => context.go('$path?id=${launch.id}'),
      ),
    );
  }

  Column createSubtitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (launch.dateUtc != null)
          IconWithText(
            icon: Icons.calendar_view_day,
            text:
                '${DateFormat.yMMMd().format(launch.dateUtc!)} ${DateFormat.Hm().format(launch.dateUtc!)}',
          ),
        if (launch.details != null)
          IconWithText(
            icon: Icons.description,
            text: launch.details ?? '',
          ),
        if (launch.rocket != null)
          IconWithText(
            icon: Icons.rocket_outlined,
            text: launch.rocket ?? '',
          ),
        if (launch.launchpad != null)
          IconWithText(
            icon: Icons.stay_current_landscape_sharp,
            text: launch.launchpad ?? '',
          ),
      ],
    );
  }

  IconData createSuccessIcon() {
    return launch.success == null
        ? Icons.question_mark
        : launch.success == true
            ? Icons.check
            : Icons.check_box_outline_blank;
  }
}
