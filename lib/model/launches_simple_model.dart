import 'package:json_annotation/json_annotation.dart';

part 'launches_simple_model.g.dart';

@JsonSerializable()
class LaunchesSimpleModel {
  @JsonKey(name: 'docs')
  final List<LaunchModel>? launches;

  @JsonKey(name: 'totalDocs')
  final int? totalDocs;

  @JsonKey(name: 'limit')
  final int? limit;

  @JsonKey(name: 'totalPages')
  final int? totalPages;

  @JsonKey(name: 'page')
  final int? page;

  @JsonKey(name: 'pagingCounter')
  final int? pagingCounter;

  @JsonKey(name: 'hasPrevPage')
  final bool? hasPrevPage;

  @JsonKey(name: 'hasNextPage')
  final bool? hasNextPage;

  @JsonKey(name: 'prevPage')
  final int? prevPage;

  @JsonKey(name: 'nextPage')
  final int? nextPage;

  LaunchesSimpleModel({
    required this.launches,
    required this.totalDocs,
    required this.limit,
    required this.totalPages,
    required this.page,
    required this.pagingCounter,
    required this.hasPrevPage,
    required this.hasNextPage,
    required this.prevPage,
    required this.nextPage,
  });

  factory LaunchesSimpleModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchesSimpleModelFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchesSimpleModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class LaunchModel {
  @JsonKey(name: 'rocket')
  final String? rocket;

  @JsonKey(name: 'details')
  final String? details;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'date_utc')
  final DateTime? dateUtc;

  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'success')
  final bool? success;

  LaunchModel({
    required this.rocket,
    required this.details,
    required this.name,
    required this.dateUtc,
    required this.id,
    required this.success,
  });

  factory LaunchModel.fromJson(Map<String, dynamic> json) =>
      _$LaunchModelFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchModelToJson(this);
}
