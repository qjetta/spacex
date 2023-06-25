// ignore_for_file: unused_import

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spacex/model/launch/launch.dart';
import 'package:spacex/ui/scaffold/scaffold_with_dynamic_navigation.dart';
import 'package:spacex/ui/screens/error_screen.dart';
import 'package:spacex/ui/screens/launch/launch_screen.dart';
import 'package:spacex/ui/screens/launches/past_launches_screen.dart';
import 'package:spacex/ui/screens/launches/upcoming_launches_screen.dart';

class Navigation {
  static const pastLaunches = '/past-launches';
  static const upcomingLaunches = '/upcoming-launches';
  static const launch = 'launch';
  static const launchParameter = '/:id';

  static const favoriteLaunch = '/favoriteLaunch';
}

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorPastLaunchesKey =
    GlobalKey<NavigatorState>(debugLabel: Navigation.pastLaunches);
final _shellNavigatorUpcomingKey =
    GlobalKey<NavigatorState>(debugLabel: Navigation.upcomingLaunches);
final _shellNavigatorFavoriteLaunchKey =
    GlobalKey<NavigatorState>(debugLabel: Navigation.favoriteLaunch);

const _favoriteLaunchId = '62f3b5330f55c50e192a4e6e';

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
              pageBuilder: (context, state) => const NoTransitionPage(
                child: PastLaunchesScreen(),
              ),
              routes: [
                GoRoute(
                  path: Navigation.launch + Navigation.launchParameter,
                  builder: (context, state) {
                    final id = state.pathParameters['id'];
                    if (id == null) {
                      return ErrorScreen(
                        message: "error.router.launch_id_missing".tr(),
                      );
                    }
                    return LaunchScreen(id: id);
                  },
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
              pageBuilder: (context, state) => const NoTransitionPage(
                child: UpcomingLaunchesScreen(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorFavoriteLaunchKey,
          routes: [
            GoRoute(
              path: Navigation.favoriteLaunch,
              pageBuilder: (context, state) => const NoTransitionPage(
                child: LaunchScreen(id: _favoriteLaunchId),
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);
