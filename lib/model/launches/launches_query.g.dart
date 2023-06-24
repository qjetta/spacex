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
          : LaunchesQueryDateFilter.fromJson(
              json['date_utc'] as Map<String, dynamic>),
      rocket: json['rocket'] as String?,
      upcoming: json['upcoming'] as bool?,
      name: json['name'] == null
          ? null
          : NameFilter.fromJson(json['name'] as Map<String, dynamic>),
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
  writeNotNull('name', instance.name?.toJson());
  return val;
}

_$_NameFilter _$$_NameFilterFromJson(Map<String, dynamic> json) =>
    _$_NameFilter(
      regex: json[r'$regex'] as String?,
      options: json[r'$options'] as String?,
    );

Map<String, dynamic> _$$_NameFilterToJson(_$_NameFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(r'$regex', instance.regex);
  writeNotNull(r'$options', instance.options);
  return val;
}

_$_LaunchesQueryDateFilter _$$_LaunchesQueryDateFilterFromJson(
        Map<String, dynamic> json) =>
    _$_LaunchesQueryDateFilter(
      gte: json[r'$gte'] == null
          ? null
          : DateTime.parse(json[r'$gte'] as String),
      lte: json[r'$lte'] == null
          ? null
          : DateTime.parse(json[r'$lte'] as String),
    );

Map<String, dynamic> _$$_LaunchesQueryDateFilterToJson(
    _$_LaunchesQueryDateFilter instance) {
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
        (k, e) => MapEntry(k, $enumDecode(_$ESortDirectionEnumMap, e)),
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
      instance.sort?.map((k, e) => MapEntry(k, _$ESortDirectionEnumMap[e]!)));
  writeNotNull('limit', instance.limit);
  writeNotNull('page', instance.page);
  return val;
}

const _$ESortDirectionEnumMap = {
  ESortDirection.asc: 'asc',
  ESortDirection.desc: 'desc',
};
