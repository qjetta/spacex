import 'package:json_annotation/json_annotation.dart';

part 'launch_simple.g.dart';
// @JsonSerializable with fields id, name, rocket, details, date_utc, success

@JsonSerializable()
class LaunchSimple {
  final String id;
  final String name;
  final String rocket;
  final String details;
  final DateTime date_utc;
  final bool success;

  LaunchSimple({
    required this.id,
    required this.name,
    required this.rocket,
    required this.details,
    required this.date_utc,
    required this.success,
  });

  factory LaunchSimple.fromJson(Map<String, dynamic> json) =>
      _$LaunchSimpleFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchSimpleToJson(this);
}
