import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex/ui/scaffold/scaffold_with_dynamic_navigation.dart';
import 'package:spacex/ui/screens/launch_screen.dart';
import 'package:spacex/ui/screens/past_launches_screen.dart';
import 'package:spacex/ui/screens/upcoming_launches_screen.dart';

class Navigation {
  static const String pastLaunches = '/past-launches';
  static const String upcomingLaunches = '/upcoming-launches';
}

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorPastLaunchesKey =
    GlobalKey<NavigatorState>(debugLabel: Navigation.pastLaunches);
final _shellNavigatorUpcomingKey =
    GlobalKey<NavigatorState>(debugLabel: Navigation.upcomingLaunches);

final goRouter = GoRouter(
  initialLocation: Navigation.pastLaunches,
  redirect: (_, state) =>
      state.location == '/' ? Navigation.pastLaunches : null,
  // * Passing a navigatorKey causes an issue on hot reload:
  // * https://github.com/flutter/flutter/issues/113757#issuecomment-1518421380
  // * However it's still necessary otherwise the navigator pops back to
  // * root on hot reload
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithDynamicNavigation(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorPastLaunchesKey,
          routes: [
            GoRoute(
              path: Navigation.pastLaunches,
              pageBuilder: (context, state) => NoTransitionPage(
                child: PastLaunchesScreen(),
              ),
              routes: [
                GoRoute(
                  path: LaunchScreen.path,
                  builder: (context, state) => const LaunchScreen(),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorUpcomingKey,
          routes: [
            GoRoute(
              path: Navigation.upcomingLaunches,
              pageBuilder: (context, state) => NoTransitionPage(
                child: UpcomingLaunchesScreen(),
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);
