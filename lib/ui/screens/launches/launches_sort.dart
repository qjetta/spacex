import 'package:flutter/material.dart';
import 'package:spacex/ui/components/ui_helper.dart';
import 'package:spacex/ui/screens/launches/drop_down_sort_attribute.dart';
import 'package:spacex/ui/screens/launches/drop_down_sort_direction.dart';

class LaunchesSort extends StatelessWidget {
  const LaunchesSort({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: UIHelper.paddingSmall,
          right: UIHelper.paddingSmall,
          bottom: UIHelper.paddingSmall,
          top: 0),
      child: Container(
        padding: const EdgeInsets.only(left: UIHelper.paddingBig),
        decoration: UIHelper.getBorderRadiusDecorationOpacity(),
        child: const Row(
          children: [
            Icon(Icons.sort),
            SizedBox(width: UIHelper.paddingSmall),
            DropDownSortAttribute(),
            SizedBox(width: UIHelper.paddingSmall),
            DropDownSortDirection(),
          ],
        ),
      ),
    );
  }
}
