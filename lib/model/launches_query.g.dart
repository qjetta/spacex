// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launches_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchesQuery _$LaunchesQueryFromJson(Map<String, dynamic> json) =>
    LaunchesQuery(
      queryData: json['query'] == null
          ? null
          : LaunchesQueryData.fromJson(json['query'] as Map<String, dynamic>),
      options: json['options'] == null
          ? null
          : LaunchesQueryOptions.fromJson(
              json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LaunchesQueryToJson(LaunchesQuery instance) {
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

LaunchesQueryData _$LaunchesQueryDataFromJson(Map<String, dynamic> json) =>
    LaunchesQueryData(
      dateQuery: DateQuery.fromJson(json['date_utc'] as Map<String, dynamic>),
      rocket: json['rocket'] as String?,
    );

Map<String, dynamic> _$LaunchesQueryDataToJson(LaunchesQueryData instance) {
  final val = <String, dynamic>{
    'date_utc': instance.dateQuery.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rocket', instance.rocket);
  return val;
}

DateQuery _$DateQueryFromJson(Map<String, dynamic> json) => DateQuery(
      gte: json[r'$gte'] == null
          ? null
          : DateTime.parse(json[r'$gte'] as String),
      lte: json[r'$lte'] == null
          ? null
          : DateTime.parse(json[r'$lte'] as String),
    );

Map<String, dynamic> _$DateQueryToJson(DateQuery instance) {
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

LaunchesQueryOptions _$LaunchesQueryOptionsFromJson(
        Map<String, dynamic> json) =>
    LaunchesQueryOptions(
      select:
          (json['select'] as List<dynamic>).map((e) => e as String).toList(),
      sort: (json['sort'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, $enumDecode(_$SortDirectionEnumMap, e)),
      ),
      limit: json['limit'] as int,
      page: json['page'] as int,
    );

Map<String, dynamic> _$LaunchesQueryOptionsToJson(
        LaunchesQueryOptions instance) =>
    <String, dynamic>{
      'select': instance.select,
      'sort':
          instance.sort.map((k, e) => MapEntry(k, _$SortDirectionEnumMap[e]!)),
      'limit': instance.limit,
      'page': instance.page,
    };

const _$SortDirectionEnumMap = {
  SortDirection.asc: 'asc',
  SortDirection.desc: 'desc',
};
