// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launches_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LaunchesQuery _$$_LaunchesQueryFromJson(Map<String, dynamic> json) =>
    _$_LaunchesQuery(
      queryData: json['query'] == null
          ? null
          : LaunchesQueryData.fromJson(json['query'] as Map<String, dynamic>),
      options: json['options'] == null
          ? null
          : LaunchesQueryOptions.fromJson(
              json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LaunchesQueryToJson(_$_LaunchesQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('query', instance.queryData);
  writeNotNull('options', instance.options);
  return val;
}

_$_LauncherQueryData _$$_LauncherQueryDataFromJson(Map<String, dynamic> json) =>
    _$_LauncherQueryData(
      dateQuery: json['date_utc'] == null
          ? null
          : DateQuery.fromJson(json['date_utc'] as Map<String, dynamic>),
      rocket: json['rocket'] as String?,
      upcoming: json['upcoming'] as bool?,
    );

Map<String, dynamic> _$$_LauncherQueryDataToJson(
    _$_LauncherQueryData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('date_utc', instance.dateQuery?.toJson());
  writeNotNull('rocket', instance.rocket);
  writeNotNull('upcoming', instance.upcoming);
  return val;
}

_$_DateQuery _$$_DateQueryFromJson(Map<String, dynamic> json) => _$_DateQuery(
      gte: json[r'$gte'] == null
          ? null
          : DateTime.parse(json[r'$gte'] as String),
      lte: json[r'$lte'] == null
          ? null
          : DateTime.parse(json[r'$lte'] as String),
    );

Map<String, dynamic> _$$_DateQueryToJson(_$_DateQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(r'$gte', instance.gte?.toIso8601String());
  writeNotNull(r'$lte', instance.lte?.toIso8601String());
  return val;
}

_$_LaunchesQueryOptions _$$_LaunchesQueryOptionsFromJson(
        Map<String, dynamic> json) =>
    _$_LaunchesQueryOptions(
      select:
          (json['select'] as List<dynamic>?)?.map((e) => e as String).toList(),
      sort: (json['sort'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, $enumDecode(_$SortDirectionEnumMap, e)),
      ),
      limit: json['limit'] as int?,
      page: json['page'] as int?,
    );

Map<String, dynamic> _$$_LaunchesQueryOptionsToJson(
    _$_LaunchesQueryOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('select', instance.select);
  writeNotNull('sort',
      instance.sort?.map((k, e) => MapEntry(k, _$SortDirectionEnumMap[e]!)));
  writeNotNull('limit', instance.limit);
  writeNotNull('page', instance.page);
  return val;
}

const _$SortDirectionEnumMap = {
  SortDirection.asc: 'asc',
  SortDirection.desc: 'desc',
};
