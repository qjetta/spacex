// ignore_for_file: unused_import

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:spacex/controller/space_x_exception.dart';
import 'package:spacex/main.dart';
import 'package:spacex/model/launches/launches_query.dart';
import 'package:spacex/model/repository.dart';
import 'package:spacex/ui/screens/launches/launches_screen.dart';

part 'repository_state.dart';

class RepositoryCubit extends Cubit<RepositoryState> {
  final Repository repository;
  final Storage storage = Storage();

  RepositoryCubit({required this.repository}) : super(RepositoryInitial());

  init() async {
    emit(RepositoryInitializing());
    try {
      await repository.init();
      emit(RepositoryInitialized());
    } on SpaceXException catch (e) {
      emit(RepositoryInitializationError(exception: e));
    } catch (e) {
      emit(
        RepositoryInitializationError(exception: SpaceXException(e.toString())),
      );
    }
  }
}

class Storage {
  final _storage = const FlutterSecureStorage();
  static const launchesQueryKey = 'launchesQuery';

  static const defaultSortDirection = ESortDirection.asc;
  static const defaultSorBy = 'date_utc';
  static const defaultNameFilter = '';

  static const selectFields = [
    'id',
    'name',
    'rocket',
    'details',
    'date_utc',
    'success',
    'launchpad'
  ];

  Future<void> saveLaunchesQuery(
      LaunchesQuery launchesQuery, ELaunchesType type) async {
    await _storage.write(
      key: _getKey(type),
      value: jsonEncode(
        launchesQuery.toJson(),
      ),
    );
  }

  Future<LaunchesQuery> loadLaunches(ELaunchesType type) async {
    var jsonString = await _storage.read(key: _getKey(type));
    if (jsonString == null) {
      return getDefaultQuery(type);
    } else {
      return LaunchesQuery.fromJson(jsonDecode(jsonString));
    }
  }

  String _getKey(ELaunchesType type) => '$launchesQueryKey.${type.name}';

  LaunchesQuery getDefaultQuery(ELaunchesType eLaunchesType) {
    switch (eLaunchesType) {
      case ELaunchesType.upcoming:
        return LaunchesQuery(
          options: LaunchesQueryOptions(
            limit: IRepository.defaultPageSize,
            sort: {defaultSorBy: defaultSortDirection},
            page: 0,
            select: selectFields,
          ),
          queryData: const LaunchesQueryData(
            upcoming: true,
            rocket: null,
          ),
        );
      case ELaunchesType.past:
        return LaunchesQuery(
          options: LaunchesQueryOptions(
            limit: IRepository.defaultPageSize,
            sort: {defaultSorBy: defaultSortDirection},
            page: 0,
            select: selectFields,
          ),
          queryData: LaunchesQueryData(
            dateQuery:
                LaunchesQueryDateFilter(gte: null, lte: DateTime.now().toUtc()),
            rocket: null,
          ),
        );
    }
  }
}
