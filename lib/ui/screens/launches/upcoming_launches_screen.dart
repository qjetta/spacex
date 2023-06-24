import 'package:easy_localization/easy_localization.dart';
import 'package:spacex/controller/go_router.dart';
import 'package:spacex/model/launches/launches_query.dart';
import 'package:spacex/model/repository.dart';
import 'package:spacex/ui/screens/launches/launches_screen.dart';

class UpcomingLaunchesScreen extends LaunchesScreen {
  UpcomingLaunchesScreen({
    super.key,
  }) : super(
          path: Navigation.pastLaunches,
          launchesQuery: LaunchesQuery(
            options: LaunchesQueryOptions(
              limit: IRepository.defaultPageSize,
              sort: {'date_utc': ESortDirection.asc},
              page: 1,
              select: [
                'id',
                'name',
                'rocket',
                'details',
                'date_utc',
                'success',
                'launchpad'
              ],
            ),
            queryData: const LaunchesQueryData(
              upcoming: true,
              rocket: null,
            ),
          ),
        );

  @override
  get title => 'launches.upcoming.title'.tr();
}
