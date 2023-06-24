// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'launches_query.freezed.dart';
part 'launches_query.g.dart';

@freezed
//
class LaunchesQuery with _$LaunchesQuery {
  @JsonSerializable(includeIfNull: false)
  factory LaunchesQuery({
    @JsonKey(name: 'query') LaunchesQueryData? queryData,
    @JsonKey(name: 'options') LaunchesQueryOptions? options,
  }) = _LaunchesQuery;

  factory LaunchesQuery.fromJson(Map<String, dynamic> json) =>
      _$LaunchesQueryFromJson(json);
}

@freezed
class LaunchesQueryData with _$LaunchesQueryData {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory LaunchesQueryData({
    @JsonKey(name: 'date_utc') LaunchesQueryDateFilter? dateQuery,
    String? rocket,
    bool? upcoming,
    NameFilter? name,
  }) = _LauncherQueryData;

  factory LaunchesQueryData.fromJson(Map<String, Object?> json) =>
      _$LaunchesQueryDataFromJson(json);
}

@freezed
class NameFilter with _$NameFilter {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  const factory NameFilter({
    @JsonKey(name: '\$regex') required String? regex,
    @JsonKey(name: '\$options') required String? options,
  }) = _NameFilter;

  factory NameFilter.fromJson(Map<String, dynamic> json) =>
      _$NameFilterFromJson(json);
}

@freezed
class LaunchesQueryDateFilter with _$LaunchesQueryDateFilter {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory LaunchesQueryDateFilter({
    @JsonKey(name: '\$gte') DateTime? gte,
    @JsonKey(name: '\$lte') DateTime? lte,
  }) = _LaunchesQueryDateFilter;

  factory LaunchesQueryDateFilter.fromJson(Map<String, dynamic> json) =>
      _$LaunchesQueryDateFilterFromJson(json);
}

@freezed
class LaunchesQueryOptions with _$LaunchesQueryOptions {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory LaunchesQueryOptions({
    List<String>? select,
    Map<String, ESortDirection>? sort,
    int? limit,
    int? page,
  }) = _LaunchesQueryOptions;

  factory LaunchesQueryOptions.fromJson(Map<String, dynamic> json) =>
      _$LaunchesQueryOptionsFromJson(json);
}

enum ESortDirection { asc, desc }
