import 'dart:math';

import 'package:mocktail/mocktail.dart';
import 'package:spacex/main.dart';
import 'package:spacex/model/launches/launches_query.dart';
import 'package:spacex/model/launches/launches_simple_model.dart';
import 'package:spacex/model/repository.dart';

class MockRepository extends Mock implements IRepository {
  final List<SimpleLaunch> launches = createList();

  @override
  Future<SimpleLaunches> fetchLaunches({required LaunchesQuery query}) async {
    int limit = query.options?.limit ?? 10;
    var page = query.options?.page ?? 0;

    var start = page * limit;
    var end = min(
      page * limit + limit,
      launches.length,
    );
    logger.d('fetchLaunches: page: $page, start: $start, end: $end');

    return Future<SimpleLaunches>.value(
      SimpleLaunches(
        launches: launches.sublist(
          start,
          end,
        ),
        totalDocs: 1,
        limit: limit,
        totalPages: 3,
        page: query.options?.page ?? 0,
        hasNextPage: (query.options?.page ?? 0) < 3,
      ),
    );
  }

  static List<SimpleLaunch> createList() {
    List<SimpleLaunch> launches = [];
    for (var i = 0; i < 35; i++) {
      launches.add(
        SimpleLaunch(
          id: 'id $i',
          name: 'name $i',
          dateUtc: DateTime.tryParse('2021-10-01T00:00:00.000Z'),
          success: true,
          details: 'details $i',
          rocket: 'rocket $i',
        ),
      );
    }
    return launches;
  }
}
