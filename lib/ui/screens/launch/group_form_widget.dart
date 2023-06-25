import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:spacex/ui/components/ui_helper.dart';

class GroupFormWidget extends StatelessWidget {
  const GroupFormWidget({
    required this.title,
    required this.children,
    super.key,
  });

  final List<Widget> children;
  final String title;

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

    return Padding(
      padding: const EdgeInsets.only(
        left: UIHelper.paddingBig,
        right: UIHelper.paddingBig,
        bottom: UIHelper.paddingSmall,
        top: UIHelper.paddingSmall,
      ),
      child: Container(
        padding: const EdgeInsets.all(UIHelper.paddingSmall),
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
                child: Center(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
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
