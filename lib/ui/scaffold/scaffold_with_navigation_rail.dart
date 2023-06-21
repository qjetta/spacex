import 'package:flutter/material.dart';
import 'package:spacex/ui/scaffold/navigation_and_destination.dart';

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
          label: Text(item.title),
          icon: Icon(item.icon),
        ),
    ];
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: selectedIndex,
            onDestinationSelected: onDestinationSelected,
            labelType: NavigationRailLabelType.all,
            destinations: destinations,
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
