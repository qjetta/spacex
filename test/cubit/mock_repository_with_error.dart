import 'dart:math';

import 'package:mocktail/mocktail.dart';
import 'package:spacex/controller/space_x_exception.dart';
import 'package:spacex/model/launches/launches_query.dart';
import 'package:spacex/model/launches/launches_simple_model.dart';
import 'package:spacex/model/repository.dart';

class MockRepositoryWithError extends Mock implements IRepository {
  static final spaceXException = SpaceXException('MockRepositoryWithError');

  @override
  Future<SimpleLaunches> fetchLaunches({required LaunchesQuery query}) async {
    throw spaceXException;
  }
}
