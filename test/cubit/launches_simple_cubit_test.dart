import 'dart:math';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spacex/controller/cubit/repository_cubit.dart';
import 'package:spacex/controller/cubit/simple_launches_cubit.dart';
import 'package:spacex/main.dart';
import 'package:spacex/model/launches/launches_query.dart';
import 'package:spacex/model/launches/launches_simple_model.dart';
import 'package:spacex/model/repository.dart';
import 'package:spacex/ui/screens/launches/launches_screen.dart';

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

class MockStorage extends Mock implements Storage {
  @override
  Future<void> saveLaunchesQuery(
      LaunchesQuery launchesQuery, ELaunchesType type) {
    return Future.value();
  }

  @override
  Future<LaunchesQuery> loadLaunches(ELaunchesType type) async {
    return Future.value(getDefaultQuery(type));
  }

  @override
  LaunchesQuery getDefaultQuery(ELaunchesType eLaunchesType) {
    return Storage().getDefaultQuery(eLaunchesType);
  }
}

void main() {
  var launchesQuery = Storage().getDefaultQuery(ELaunchesType.upcoming);

  group('LaunchesSimpleCubit Test', () {
    setUp(
      () async {},
    );
    blocTest<SimpleLaunchesCubit, SimpleLaunchesState>(
      'fetch 4 pages of launches',
      build: () => SimpleLaunchesCubit(
        repository: MockRepository(),
        storage: MockStorage(),
        launchesType: ELaunchesType.upcoming,
      ),
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
