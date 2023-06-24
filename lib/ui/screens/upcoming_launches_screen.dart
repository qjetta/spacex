import 'package:easy_localization/easy_localization.dart';
import 'package:spacex/controller/go_router.dart';
import 'package:spacex/model/launches_query.dart';
import 'package:spacex/model/repository.dart';
import 'package:spacex/ui/screens/launches_screen.dart';

class UpcomingLaunchesScreen extends LaunchesScreen {
  UpcomingLaunchesScreen({
    super.key,
  }) : super(
          path: Navigation.pastLaunches,
          launchesQuery: LaunchesQuery(
            options: LaunchesQueryOptions(
              limit: IRepository.defaultPageSize,
              sort: {'date_utc': SortDirection.asc},
              page: 1,
              select: [
                'id',
                'name',
                'rocket',
                'details',
                'date_utc',
                'success',
              ],
            ),
            queryData: const LaunchesQueryData(
              upcoming: true,
              rocket: null,
            ),
          ),
        );

  @override
  get title => 'upcoming.launches.title'.tr();
}
