import 'package:flutter/material.dart';
import 'package:spacex/ui/components/ui_helper.dart';
import 'package:spacex/ui/screens/launches/drop_down_sort_attribute.dart';
import 'package:spacex/ui/screens/launches/drop_down_sort_direction.dart';

class LaunchesFilter extends StatelessWidget {
  const LaunchesFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: UIHelper.paddingSmall,
          right: UIHelper.paddingSmall,
          top: UIHelper.paddingSmall,
          bottom: 0),
      child: Container(
        padding: const EdgeInsets.only(left: UIHelper.paddingBig),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            UIHelper.borderRadius,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: const Row(
          children: [
            Icon(Icons.sort_by_alpha),
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
