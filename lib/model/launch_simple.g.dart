// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_simple.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchSimple _$LaunchSimpleFromJson(Map<String, dynamic> json) => LaunchSimple(
      id: json['id'] as String,
      name: json['name'] as String,
      rocket: json['rocket'] as String,
      details: json['details'] as String,
      date_utc: DateTime.parse(json['date_utc'] as String),
      success: json['success'] as bool,
    );

Map<String, dynamic> _$LaunchSimpleToJson(LaunchSimple instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rocket': instance.rocket,
      'details': instance.details,
      'date_utc': instance.date_utc.toIso8601String(),
      'success': instance.success,
    };
