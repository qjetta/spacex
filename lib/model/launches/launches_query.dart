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
    @JsonKey(name: 'date_utc') DateQuery? dateQuery,
    String? rocket,
    bool? upcoming,
  }) = _LauncherQueryData;

  factory LaunchesQueryData.fromJson(Map<String, Object?> json) =>
      _$LaunchesQueryDataFromJson(json);
}

@freezed
class DateQuery with _$DateQuery {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory DateQuery({
    @JsonKey(name: '\$gte') DateTime? gte,
    @JsonKey(name: '\$lte') DateTime? lte,
  }) = _DateQuery;

  factory DateQuery.fromJson(Map<String, dynamic> json) =>
      _$DateQueryFromJson(json);
}

@freezed
class LaunchesQueryOptions with _$LaunchesQueryOptions {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory LaunchesQueryOptions({
    List<String>? select,
    Map<String, SortDirection>? sort,
    int? limit,
    int? page,
  }) = _LaunchesQueryOptions;

  factory LaunchesQueryOptions.fromJson(Map<String, dynamic> json) =>
      _$LaunchesQueryOptionsFromJson(json);
}

enum SortDirection { asc, desc }
