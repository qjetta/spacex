import 'package:easy_localization/easy_localization.dart';
import 'package:spacex/controller/go_router.dart';
import 'package:spacex/model/launches/launches_query.dart';
import 'package:spacex/model/repository.dart';
import 'package:spacex/ui/screens/launches_screen.dart';

class PastLaunchesScreen extends LaunchesScreen {
  PastLaunchesScreen({
    super.key,
  }) : super(
          path: Navigation.pastLaunches,
          launchesQuery: LaunchesQuery(
            options: LaunchesQueryOptions(
              limit: IRepository.defaultPageSize,
              sort: {'date_utc': SortDirection.desc},
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
            queryData: LaunchesQueryData(
              dateQuery: DateQuery(gte: null, lte: DateTime.now().toUtc()),
              rocket: null,
            ),
          ),
        );

  @override
  get title => 'past.launches.title'.tr();
}
