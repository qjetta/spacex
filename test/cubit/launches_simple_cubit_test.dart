import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:spacex/controller/cubit/launches_simple_cubit.dart';
import 'package:spacex/model/launches_query.dart';
import 'package:spacex/model/launches_simple_model.dart';
import 'package:spacex/model/repository.dart';

class MockRepository extends Mock implements IRepository {
  var launches = <LaunchModel>[];

  MockRepository() {
    for (var i = 0; i < 35; i++) {
      launches.add(
        LaunchModel(
          id: '1 $i',
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
  Future<LaunchesSimpleModel> fetchLaunches(
      {required LaunchesQuery query}) async {
    int limit = query.options?.limit ?? 10;
    return Future<LaunchesSimpleModel>.value(
      LaunchesSimpleModel(
        launches: launches.sublist(query.options?.page ?? 0 * limit,
            query.options?.page ?? 10 + 10 * limit),
        totalDocs: 1,
        limit: limit,
        totalPages: 3,
        page: query.options?.page ?? 0,
        pagingCounter: 1,
        hasPrevPage: false,
        hasNextPage: (query.options?.page ?? 0) < 3,
        prevPage: query.options?.page ?? 0 - 1,
        nextPage: query.options?.page ?? 0 + 1,
      ),
    );
  }
}

void main() {
  var launchesQuery = LaunchesQuery(
    options: LaunchesQueryOptions(
      limit: 10,
      sort: {'date_utc': SortDirection.desc},
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
      dateQuery: DateQuery(gte: null, lte: DateTime.now().toUtc()),
      rocket: null,
    ),
  );

  group('LaunchesSimpleCubit Test', () {
    setUp(
      () async {},
    );
    blocTest<LaunchesSimpleCubit, LaunchesSimpleState>(
      'fetch 4 pages of launches',
      build: () => LaunchesSimpleCubit(
          launchesQuery: launchesQuery, repository: MockRepository()),
      act: (cubit) async {
        cubit.fetchNextLaunches();
        // await Future.delayed(const Duration(seconds: 3));
        // cubit.fetchNextLaunches();
        // await Future.delayed(const Duration(seconds: 3));
        // cubit.fetchNextLaunches();
        // await Future.delayed(const Duration(seconds: 3));
        // cubit.fetchNextLaunches();
        // await Future.delayed(const Duration(seconds: 3));
        // cubit.fetchNextLaunches();
      },
      expect: () => <LaunchesSimpleState>[
        LaunchesSimpleLoadingState(
            launchesQuery: launchesQuery,
            launchesSimpleList: const [],
            hasNext: true),
        LaunchesSimpleLoadedState(
          launchesQuery: launchesQuery.copyWith(
              options: launchesQuery.options?.copyWith(page: 1)),
          launchesSimpleList: MockRepository().launches.sublist(0, 10),
          hasNext: true,
        ),
        // LaunchesSimpleLoadingState(
        //     launchesQuery: launchesQuery.copyWith(
        //         options: launchesQuery.options?.copyWith(page: 1)),
        //     launchesSimpleList: MockRepository().launches.sublist(0, 10),
        //     hasNext: true),
        // LaunchesSimpleLoadedState(
        //   launchesQuery: launchesQuery.copyWith(
        //       options: launchesQuery.options?.copyWith(page: 2)),
        //   launchesSimpleList: MockRepository().launches.sublist(0, 20),
        //   hasNext: true,
        // ),
        // LaunchesSimpleLoadingState(
        //     launchesQuery: launchesQuery.copyWith(
        //         options: launchesQuery.options?.copyWith(page: 2)),
        //     launchesSimpleList: MockRepository().launches.sublist(0, 20),
        //     hasNext: true),
        // LaunchesSimpleLoadedState(
        //   launchesQuery: launchesQuery.copyWith(
        //       options: launchesQuery.options?.copyWith(page: 3)),
        //   launchesSimpleList: MockRepository().launches.sublist(0, 30),
        //   hasNext: true,
        // ),
        // LaunchesSimpleLoadingState(
        //     launchesQuery: launchesQuery.copyWith(
        //         options: launchesQuery.options?.copyWith(page: 3)),
        //     launchesSimpleList: MockRepository().launches.sublist(0, 30),
        //     hasNext: true),
        // LaunchesSimpleLoadedState(
        //   launchesQuery: launchesQuery.copyWith(
        //       options: launchesQuery.options?.copyWith(page: 4)),
        //   launchesSimpleList: MockRepository().launches.sublist(0, 35),
        //   hasNext: false,
        // ),
      ],
    );
  });
}
