import 'package:easy_localization/easy_localization.dart';
import 'package:spacex/controller/go_router.dart';
import 'package:spacex/ui/screens/launches/launches_screen.dart';

class PastLaunchesScreen extends LaunchesScreen {
  const PastLaunchesScreen({
    super.key,
  }) : super(
          path: Navigation.pastLaunches,
          launchesType: ELaunchesType.past,
        );

  @override
  get title => 'launches.past.title'.tr();
}
