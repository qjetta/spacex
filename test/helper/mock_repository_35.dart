import 'dart:math';

import 'package:mocktail/mocktail.dart';
import 'package:spacex/main.dart';
import 'package:spacex/model/launches/launches_query.dart';
import 'package:spacex/model/launches/launches_simple_model.dart';
import 'package:spacex/model/repository.dart';

class MockRepository extends Mock implements IRepository {
  final List<SimpleLaunch> launches = createList();

  int compareLaunchNames(SimpleLaunch? a, SimpleLaunch? b) {
    if (a == null && b == null) {
      return 0; // Elements are equal
    } else if (a == null) {
      return -1; // a is considered smaller
    } else if (b == null) {
      return 1; // b is considered smaller
    } else if (a.name == null && b.name == null) {
      return 0; // Names are both null, elements are equal
    } else if (a.name == null) {
      return -1; // a.name is null, a is considered smaller
    } else if (b.name == null) {
      return 1; // b.name is null, b is considered smaller
    } else {
      return a.name!.compareTo(b.name!); // Compare the names
    }
  }

  @override
  Future<SimpleLaunches> fetchLaunches({required LaunchesQuery query}) async {
    int limit = query.options?.limit ?? 10;
    var page = query.options?.page ?? 0;
    List<SimpleLaunch> tmpLaunches = List.from(launches);

    if (query.options?.sort?.keys.first == 'name') {
      ESortDirection? sortDirection = query.options?.sort?.values.first;
      if (sortDirection == ESortDirection.asc) {
        tmpLaunches.sort((a, b) => compareLaunchNames(a, b));
      } else {
        tmpLaunches.sort((a, b) => compareLaunchNames(b, a));
      }
    }

    if (query.queryData?.name?.regex?.isNotEmpty ?? false) {
      tmpLaunches = tmpLaunches
          .where((element) =>
              element.name!.contains(query.queryData!.name!.regex!))
          .toList();
    }

    var start = page * limit;
    var end = min(
      page * limit + limit,
      tmpLaunches.length,
    );
    logger.d(
        'fetchLaunches: page: $page, start: $start, end: $end, hasNext: ${(query.options?.page ?? 0) < (3)}');

    var totalPages = (tmpLaunches.length / limit).ceil();
    var simpleLaunches = SimpleLaunches(
      launches: tmpLaunches.sublist(
        start,
        end,
      ),
      totalDocs: 1,
      limit: limit,
      totalPages: totalPages,
      page: query.options?.page ?? 0,
      hasNextPage: (query.options?.page ?? 0) < (3),
    );

    logger.d(simpleLaunches);

    return Future<SimpleLaunches>.value(
      simpleLaunches,
    );
  }

  static List<SimpleLaunch> createList() {
    List<SimpleLaunch> launches = [];
    for (var i = 1; i < 36; i++) {
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
