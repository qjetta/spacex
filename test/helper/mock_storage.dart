import 'package:mocktail/mocktail.dart';
import 'package:spacex/model/launches/launches_query.dart';
import 'package:spacex/model/launches/launches_simple_model.dart';
import 'package:spacex/model/storage.dart';
import 'package:spacex/view/screens/launches/launches_screen.dart';

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

  @override
  Future<SimpleLaunches?> loadLaunches(ELaunchesType type) async {
    return Future.value(SimpleLaunches(launches: []));
  }

  @override
  Future<void> saveLaunches(
      SimpleLaunches simpleLaunches, ELaunchesType type) async {}
}
