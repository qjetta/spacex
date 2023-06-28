import 'package:flutter/material.dart';
import 'package:spacex/view/components/ui_helper.dart';
import 'package:spacex/view/screens/launches/drop_down_sort_attribute.dart';
import 'package:spacex/view/screens/launches/drop_down_sort_direction.dart';

class LaunchesSort extends StatelessWidget {
  const LaunchesSort({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if ((MediaQuery.of(context)).size.height < 60.0) {
      return Container();
    }
    return Padding(
      padding: const EdgeInsets.only(
          left: UIHelper.paddingSmall,
          right: UIHelper.paddingSmall,
          bottom: UIHelper.paddingSmall,
          top: 0),
      child: Container(
        padding: const EdgeInsets.only(left: UIHelper.paddingBig),
        decoration: UIHelper.getBorderRadiusDecorationOpacity(),
        width: double.infinity,
        child: const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(Icons.sort_by_alpha),
              SizedBox(width: UIHelper.paddingSmall),
              DropDownSortAttribute(),
              SizedBox(width: UIHelper.paddingSmall),
              DropDownSortDirection(),
            ],
          ),
        ),
      ),
    );
  }
}
