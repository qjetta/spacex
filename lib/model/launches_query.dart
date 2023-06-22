import 'package:json_annotation/json_annotation.dart';

part 'launches_query.g.dart';

@JsonSerializable()
class LaunchesQuery {
  @JsonKey(name: 'query')
  final LaunchesQueryData? queryData;

  @JsonKey(name: 'options')
  final LaunchesQueryOptions? options;

  LaunchesQuery({
    required this.queryData,
    required this.options,
  });

  factory LaunchesQuery.fromJson(Map<String, dynamic> json) =>
      _$LaunchesQueryFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchesQueryToJson(this);
}

@JsonSerializable()
class LaunchesQueryData {
  @JsonKey(name: 'date_utc')
  final DateQuery dateQuery;

  @JsonKey(name: 'rocket')
  final String rocket;

  LaunchesQueryData({
    required this.dateQuery,
    required this.rocket,
  });

  factory LaunchesQueryData.fromJson(Map<String, dynamic> json) =>
      _$LaunchesQueryDataFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchesQueryDataToJson(this);
}

@JsonSerializable()
class DateQuery {
  @JsonKey(name: '\$gte')
  final String gte;

  @JsonKey(name: '\$lte')
  final String lte;

  DateQuery({
    required this.gte,
    required this.lte,
  });

  factory DateQuery.fromJson(Map<String, dynamic> json) =>
      _$DateQueryFromJson(json);

  Map<String, dynamic> toJson() => _$DateQueryToJson(this);
}

@JsonSerializable()
class LaunchesQueryOptions {
  @JsonKey(name: 'select')
  final List<String> select;

  @JsonKey(name: 'sort')
  final LaunchesQuerySort sort;

  @JsonKey(name: 'limit')
  final int limit;

  @JsonKey(name: 'page')
  final int page;

  LaunchesQueryOptions({
    required this.select,
    required this.sort,
    required this.limit,
    required this.page,
  });

  factory LaunchesQueryOptions.fromJson(Map<String, dynamic> json) =>
      _$LaunchesQueryOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchesQueryOptionsToJson(this);
}

@JsonSerializable()
class LaunchesQuerySort {
  @JsonKey(name: 'name')
  final String name;

  LaunchesQuerySort({
    required this.name,
  });

  factory LaunchesQuerySort.fromJson(Map<String, dynamic> json) =>
      _$LaunchesQuerySortFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchesQuerySortToJson(this);
}
