import 'dart:math';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spacex/controller/cubit/simple_launches_cubit.dart';
import 'package:spacex/model/launches/launches_query.dart';
import 'package:spacex/model/launches/launches_simple_model.dart';
import 'package:spacex/model/repository.dart';

class MockRepository extends Mock implements IRepository {
  var launches = <SimpleLaunch>[];

  MockRepository() {
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
  }

  @override
  Future<SimpleLaunches> fetchLaunches({required LaunchesQuery query}) async {
    int limit = query.options?.limit ?? 10;
    var page = query.options?.page ?? 0;
    return Future<SimpleLaunches>.value(
      SimpleLaunches(
        launches: launches.sublist(
          page * limit,
          min(
            page * limit + limit,
            launches.length,
          ),
        ),
        totalDocs: 1,
        limit: limit,
        totalPages: 3,
        page: query.options?.page ?? 0,
        hasNextPage: (query.options?.page ?? 0) < 3,
      ),
    );
  }
}

void main() {
  var launchesQuery = LaunchesQuery(
    options: LaunchesQueryOptions(
      limit: 10,
      sort: {'date_utc': ESortDirection.desc},
      page: 0,
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
      dateQuery:
          LaunchesQueryDateFilter(gte: null, lte: DateTime.now().toUtc()),
      rocket: null,
    ),
  );

  group('LaunchesSimpleCubit Test', () {
    setUp(
      () async {},
    );
    blocTest<SimpleLaunchesCubit, SimpleLaunchesState>(
      'fetch 4 pages of launches',
      build: () => SimpleLaunchesCubit(
          launchesQuery: launchesQuery, repository: MockRepository()),
      act: (cubit) async {
        for (var i = 0; i < 4; i++) {
          await Future.delayed(const Duration(seconds: 3));
          cubit.fetchNextPage();
        }
      },
      expect: () => <SimpleLaunchesState>[
        //1st run
        SimpleLaunchesLoadingState(
            launchesQuery: launchesQuery,
            launchesSimpleList: const [],
            hasNext: true),
        SimpleLaunchesLoadedState(
          launchesQuery: launchesQuery.copyWith(
              options: launchesQuery.options?.copyWith(page: 1)),
          launchesSimpleList: MockRepository().launches.sublist(0, 10),
          hasNext: true,
        ),
        //2nd run
        SimpleLaunchesLoadingState(
            launchesQuery: launchesQuery.copyWith(
                options: launchesQuery.options?.copyWith(page: 1)),
            launchesSimpleList: MockRepository().launches.sublist(0, 10),
            hasNext: true),
        SimpleLaunchesLoadedState(
          launchesQuery: launchesQuery.copyWith(
              options: launchesQuery.options?.copyWith(page: 2)),
          launchesSimpleList: MockRepository().launches.sublist(0, 20),
          hasNext: true,
        ),
        //3rd run
        SimpleLaunchesLoadingState(
            launchesQuery: launchesQuery.copyWith(
                options: launchesQuery.options?.copyWith(page: 2)),
            launchesSimpleList: MockRepository().launches.sublist(0, 20),
            hasNext: true),
        SimpleLaunchesLoadedState(
          launchesQuery: launchesQuery.copyWith(
              options: launchesQuery.options?.copyWith(page: 3)),
          launchesSimpleList: MockRepository().launches.sublist(0, 30),
          hasNext: true,
        ),
        //4th run
        SimpleLaunchesLoadingState(
            launchesQuery: launchesQuery.copyWith(
                options: launchesQuery.options?.copyWith(page: 3)),
            launchesSimpleList: MockRepository().launches.sublist(0, 30),
            hasNext: true),
        SimpleLaunchesLoadedState(
          launchesQuery: launchesQuery.copyWith(
              options: launchesQuery.options?.copyWith(page: 4)),
          launchesSimpleList: MockRepository().launches.sublist(0, 35),
          hasNext: false,
        ),
      ],
    );
  });
}
