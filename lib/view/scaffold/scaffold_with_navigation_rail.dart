import 'package:flutter/material.dart';
import 'package:spacex/view/scaffold/navigation_and_destination.dart';

class ScaffoldWithNavigationRail extends StatelessWidget {
  const ScaffoldWithNavigationRail({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.titleAndIcons,
  });
  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  final List<TitleAndIcon> titleAndIcons;

  @override
  Widget build(BuildContext context) {
    //fill destinations from titleAndIcons
    List<NavigationRailDestination> destinations = [
      for (var item in titleAndIcons)
        NavigationRailDestination(
          label: Center(
            child: Text(
              item.railTitle,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
          icon: Icon(item.icon),
        ),
    ];
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Row(
        children: [
          FittedBox(
            fit: BoxFit.fitHeight,
            child: Container(
              constraints: BoxConstraints.loose(const Size(100, 400)),
              child: NavigationRail(
                selectedIndex: selectedIndex,
                onDestinationSelected: onDestinationSelected,
                labelType: NavigationRailLabelType.all,
                destinations: destinations,
              ),
            ),
          ),

          const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.

          Expanded(
            child: body,
          ),
        ],
      ),
    );
  }
}
