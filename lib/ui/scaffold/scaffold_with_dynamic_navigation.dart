import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex/ui/scaffold/navigation_and_destination.dart';
import 'package:spacex/ui/scaffold/scaffold_with_navigation_bar.dart';
import 'package:spacex/ui/scaffold/scaffold_with_navigation_rail.dart';

// Stateful navigation based on:
// https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart
class ScaffoldWithDynamicNavigation extends StatelessWidget {
  const ScaffoldWithDynamicNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(
            key: key ?? const ValueKey<String>('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    var titlesAndIcons = [
      TitleAndIcon(
        title: 'Past Launches',
        icon: Icons.chevron_left,
      ),
      TitleAndIcon(
        title: 'Upcoming Launches',
        icon: Icons.chevron_right,
      ),
    ];

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 450) {
        return ScaffoldWithNavigationBar(
          body: navigationShell,
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: _goBranch,
          titleAndIcons: titlesAndIcons,
        );
      } else {
        return ScaffoldWithNavigationRail(
          body: navigationShell,
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: _goBranch,
          titleAndIcons: titlesAndIcons,
        );
      }
    });
  }
}
