import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:spacex/ui/components/title_with_background_widget.dart';
import 'package:spacex/ui/components/ui_helper.dart';

class GroupFormWidget extends StatelessWidget {
  const GroupFormWidget({
    required this.title,
    required this.children,
    this.level = 1,
    super.key,
  });

  final List<Widget> children;
  final String title;
  final int level;

  @override
  Widget build(BuildContext context) {
    List<GridPlacement> widgets = [];
    for (var i = 0; i < children.length; i++) {
      if (children[i] is GridPlacement) {
        widgets.add(children[i] as GridPlacement);
        continue;
      }

      widgets.add(GridPlacement(
        columnStart: i % 2,
        columnSpan: 1,
        rowStart: 1 + (i / 2).floor(),
        rowSpan: 1,
        child: children[i],
      ));
    }

    double paddingSmall = level == 1 ? UIHelper.paddingSmall : 0.0;
    double paddingBig = level == 1 ? UIHelper.paddingBig : 0.0;

    return Padding(
      padding: EdgeInsets.only(
        left: paddingBig,
        right: paddingBig,
        bottom: paddingSmall,
        top: paddingSmall,
      ),
      child: Container(
        padding: EdgeInsets.all(paddingSmall),
        child: Center(
          child: LayoutGrid(
            gridFit: GridFit.expand,
            columnSizes: [1.0.fr, 2.0.fr],
            rowSizes: [
              ...List<TrackSize>.generate(
                (children.length / 2).ceil() + 1,
                (int index) => auto,
              ).toList()
            ],
            children: [
              GridPlacement(
                columnStart: 0,
                columnSpan: 2,
                rowStart: 0,
                rowSpan: 1,
                child: TitleWithBackgroundWidget(
                  level: level,
                  title: title,
                ),
              ),
              ...widgets
            ],
          ),
        ),
      ),
    );
  }
}
