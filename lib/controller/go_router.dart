import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex/ui/scaffold/scaffold_with_dynamic_navigation.dart';
import 'package:spacex/ui/screens/launch_screen.dart';
import 'package:spacex/ui/screens/past_launches_screen.dart';
import 'package:spacex/ui/screens/upcoming_launches_screen.dart';

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorPastLaunchesKey =
    GlobalKey<NavigatorState>(debugLabel: PastLaunchesScreen.path);
final _shellNavigatorUpcomingKey =
    GlobalKey<NavigatorState>(debugLabel: UpcomingLaunchesScreen.path);

final goRouter = GoRouter(
  initialLocation: PastLaunchesScreen.path,
  redirect: (_, state) =>
      state.location == '/' ? PastLaunchesScreen.path : null,
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
              path: PastLaunchesScreen.path,
              pageBuilder: (context, state) => const NoTransitionPage(
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
              path: UpcomingLaunchesScreen.path,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: UpcomingLaunchesScreen(),
              ),
              // routes: [
              //   GoRoute(
              //     path: 'details',
              //     builder: (context, state) => const DetailsScreen(label: 'B'),
              //   ),
              // ],
            ),
          ],
        ),
      ],
    ),
  ],
);
