import 'package:mocktail/mocktail.dart';
import 'package:spacex/controller/cubit/repository_cubit.dart';
import 'package:spacex/model/launches/launches_query.dart';
import 'package:spacex/ui/screens/launches/launches_screen.dart';

class MockStorage extends Mock implements Storage {
  @override
  Future<void> saveLaunchesQuery(
      LaunchesQuery launchesQuery, ELaunchesType type) {
    return Future.value();
  }

  @override
  Future<LaunchesQuery> loadLaunchesQuery(ELaunchesType type) async {
    return Future.value(getDefaultQuery(type));
  }

  @override
  LaunchesQuery getDefaultQuery(ELaunchesType eLaunchesType) {
    return Storage().getDefaultQuery(eLaunchesType);
  }
}
