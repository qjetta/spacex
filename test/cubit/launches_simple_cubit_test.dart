import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:spacex/controller/cubit/simple_launches_cubit.dart';
import 'package:spacex/model/storage.dart';
import 'package:spacex/view/screens/launches/launches_screen.dart';

import '../helper/mock_repository_35.dart';
import '../helper/mock_repository_with_error.dart';
import '../helper/mock_storage.dart';
import '../helper/test_helper.dart';

void main() {
  var launchesQuery = Storage().getDefaultQuery(ELaunchesType.upcoming);

  group('LaunchesSimpleCubit Test', () {
    setUp(
      () async {
        await initTestEnv(integration: false);
      },
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

    blocTest<SimpleLaunchesCubit, SimpleLaunchesState>(
      'fetch 3x launches with error',
      build: () => SimpleLaunchesCubit(
        repository: MockRepositoryWithError(),
        storage: MockStorage(),
        launchesType: ELaunchesType.upcoming,
      ),
      act: (cubit) async {
        for (var i = 0; i < 3; i++) {
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
        SimpleLaunchesErrorState(
          launchesQuery: launchesQuery,
          launchesSimpleList: const [],
          hasNext: true,
          exception: MockRepositoryWithError.spaceXException,
        ),
        //2nd run
        SimpleLaunchesLoadingState(
            launchesQuery: launchesQuery,
            launchesSimpleList: const [],
            hasNext: true),
        SimpleLaunchesErrorState(
          launchesQuery: launchesQuery,
          launchesSimpleList: const [],
          hasNext: true,
          exception: MockRepositoryWithError.spaceXException,
        ),
        //3rd run
        SimpleLaunchesLoadingState(
            launchesQuery: launchesQuery,
            launchesSimpleList: const [],
            hasNext: true),
        SimpleLaunchesErrorState(
          launchesQuery: launchesQuery,
          launchesSimpleList: const [],
          hasNext: true,
          exception: MockRepositoryWithError.spaceXException,
        ),
      ],
    );
  });
}
