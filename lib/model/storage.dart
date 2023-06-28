import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:spacex/model/launches/launches_query.dart';
import 'package:spacex/model/launches/launches_simple_model.dart';
import 'package:spacex/model/repository.dart';
import 'package:spacex/ui/screens/launches/launches_screen.dart';

class Storage {
  final _storage = const FlutterSecureStorage();
  static const launchesQueryKey = 'launchesQuery';
  static const launchesKey = 'launches';

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
    await _saveJson(
      _getKey(launchesQueryKey, type),
      launchesQuery.toJson(),
    );
  }

  Future<LaunchesQuery> loadLaunchesQuery(ELaunchesType type) async {
    var jsonString = await _storage.read(
      key: _getKey(
        launchesQueryKey,
        type,
      ),
    );
    if (jsonString == null) {
      return getDefaultQuery(type);
    } else {
      return LaunchesQuery.fromJson(
        jsonDecode(jsonString),
      );
    }
  }

  Future<SimpleLaunches?> loadLaunches(ELaunchesType type) async {
    var jsonString = await _storage.read(
      key: _getKey(
        launchesKey,
        type,
      ),
    );
    if (jsonString != null) {
      return SimpleLaunches.fromJson(
        jsonDecode(jsonString),
      );
    }
    //empty list
    return Future.value(SimpleLaunches());
  }

  Future<void> saveLaunches(
    SimpleLaunches simpleLaunches,
    ELaunchesType type,
  ) async {
    await _saveJson(
      _getKey(launchesKey, type),
      simpleLaunches.toJson(),
    );
  }

  Future<void> _saveJson(
    String key,
    Map<String, dynamic> json,
  ) async {
    await _storage.write(
      key: key,
      value: jsonEncode(
        json,
      ),
    );
  }

  String _getKey(
    String prefix,
    ELaunchesType type,
  ) =>
      '$prefix.${type.name}';

  LaunchesQuery getDefaultQuery(ELaunchesType eLaunchesType) {
    switch (eLaunchesType) {
      case ELaunchesType.upcoming:
        return _getDefaultUpcomingLaunches();
      case ELaunchesType.past:
        return _getDefaultPastLaunches();
    }
  }

  LaunchesQuery _getDefaultPastLaunches() {
    return LaunchesQuery(
      options: LaunchesQueryOptions(
        limit: IRepository.defaultPageSize,
        sort: {defaultSorBy: defaultSortDirection},
        page: 0,
        select: selectFields,
      ),
      queryData: LaunchesQueryData(
        dateQuery: LaunchesQueryDateFilter(
          gte: null,
          lte: DateTime.now().toUtc(),
        ),
        rocket: null,
      ),
    );
  }

  LaunchesQuery _getDefaultUpcomingLaunches() {
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
  }
}
