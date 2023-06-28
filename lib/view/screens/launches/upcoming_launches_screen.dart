import 'package:easy_localization/easy_localization.dart';
import 'package:spacex/controller/go_router.dart';
import 'package:spacex/view/screens/launches/launches_screen.dart';

class UpcomingLaunchesScreen extends LaunchesScreen {
  const UpcomingLaunchesScreen({
    super.key,
  }) : super(
          path: Navigation.upcomingLaunches,
          launchesType: ELaunchesType.upcoming,
        );

  @override
  get title => 'launches.upcoming.title'.tr();
}
