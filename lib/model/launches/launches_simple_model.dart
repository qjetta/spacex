import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'launches_simple_model.g.dart';
part 'launches_simple_model.freezed.dart';

@freezed
class LaunchesSimpleModel with _$LaunchesSimpleModel {
  @JsonSerializable()
  factory LaunchesSimpleModel({
    @JsonKey(name: 'docs') List<LaunchModel>? launches,
    int? totalDocs,
    int? limit,
    int? totalPages,
    int? page,
    bool? hasNextPage,
  }) = _LaunchesModel;

  factory LaunchesSimpleModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchesSimpleModelFromJson(json);
}

@freezed
class LaunchModel with _$LaunchModel {
  @JsonSerializable(explicitToJson: true)
  factory LaunchModel({
    String? rocket,
    String? details,
    String? name,
    DateTime? dateUtc,
    String? id,
    bool? success,
  }) = _LaunchModel;

  factory LaunchModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchModelFromJson(json);
}
