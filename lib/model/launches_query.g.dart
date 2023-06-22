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

Map<String, dynamic> _$LaunchesQueryToJson(LaunchesQuery instance) =>
    <String, dynamic>{
      'query': instance.queryData,
      'options': instance.options,
    };

LaunchesQueryData _$LaunchesQueryDataFromJson(Map<String, dynamic> json) =>
    LaunchesQueryData(
      dateQuery: DateQuery.fromJson(json['date_utc'] as Map<String, dynamic>),
      rocket: json['rocket'] as String,
    );

Map<String, dynamic> _$LaunchesQueryDataToJson(LaunchesQueryData instance) =>
    <String, dynamic>{
      'date_utc': instance.dateQuery,
      'rocket': instance.rocket,
    };

DateQuery _$DateQueryFromJson(Map<String, dynamic> json) => DateQuery(
      gte: json[r'$gte'] as String,
      lte: json[r'$lte'] as String,
    );

Map<String, dynamic> _$DateQueryToJson(DateQuery instance) => <String, dynamic>{
      r'$gte': instance.gte,
      r'$lte': instance.lte,
    };

LaunchesQueryOptions _$LaunchesQueryOptionsFromJson(
        Map<String, dynamic> json) =>
    LaunchesQueryOptions(
      select:
          (json['select'] as List<dynamic>).map((e) => e as String).toList(),
      sort: LaunchesQuerySort.fromJson(json['sort'] as Map<String, dynamic>),
      limit: json['limit'] as int,
      page: json['page'] as int,
    );

Map<String, dynamic> _$LaunchesQueryOptionsToJson(
        LaunchesQueryOptions instance) =>
    <String, dynamic>{
      'select': instance.select,
      'sort': instance.sort,
      'limit': instance.limit,
      'page': instance.page,
    };

LaunchesQuerySort _$LaunchesQuerySortFromJson(Map<String, dynamic> json) =>
    LaunchesQuerySort(
      name: json['name'] as String,
    );

Map<String, dynamic> _$LaunchesQuerySortToJson(LaunchesQuerySort instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
