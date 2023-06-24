import 'package:freezed_annotation/freezed_annotation.dart';

part 'launches_simple_model.g.dart';
part 'launches_simple_model.freezed.dart';

@freezed
class SimpleLaunches with _$SimpleLaunches {
  @JsonSerializable()
  factory SimpleLaunches({
    @JsonKey(name: 'docs') List<SimpleLaunch>? launches,
    int? totalDocs,
    int? limit,
    int? totalPages,
    int? page,
    bool? hasNextPage,
  }) = _LaunchesModel;

  factory SimpleLaunches.fromJson(Map<String, dynamic> json) =>
      _$SimpleLaunchesFromJson(json);
}

@freezed
class SimpleLaunch with _$SimpleLaunch {
  @JsonSerializable(explicitToJson: true)
  factory SimpleLaunch({
    String? rocket,
    String? details,
    String? name,
    String? launchpad,
    @JsonKey(name: 'date_utc') DateTime? dateUtc,
    String? id,
    bool? success,
  }) = _LaunchModel;

  factory SimpleLaunch.fromJson(Map<String, dynamic> json) =>
      _$SimpleLaunchFromJson(json);
}
