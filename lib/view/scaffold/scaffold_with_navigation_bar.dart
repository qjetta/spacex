import 'package:flutter/material.dart';
import 'package:spacex/view/scaffold/navigation_and_destination.dart';

class ScaffoldWithNavigationBar extends StatelessWidget {
  const ScaffoldWithNavigationBar({
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
    List<NavigationDestination> destinations = [
      for (var item in titleAndIcons)
        NavigationDestination(
          label: item.title,
          icon: Icon(item.icon),
        ),
    ];

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: body,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        destinations: destinations,
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}
