// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launches_simple_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LaunchesModel _$$_LaunchesModelFromJson(Map<String, dynamic> json) =>
    _$_LaunchesModel(
      launches: (json['docs'] as List<dynamic>?)
          ?.map((e) => LaunchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalDocs: json['totalDocs'] as int?,
      limit: json['limit'] as int?,
      totalPages: json['totalPages'] as int?,
      page: json['page'] as int?,
      hasNextPage: json['hasNextPage'] as bool?,
    );

Map<String, dynamic> _$$_LaunchesModelToJson(_$_LaunchesModel instance) =>
    <String, dynamic>{
      'docs': instance.launches,
      'totalDocs': instance.totalDocs,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
      'page': instance.page,
      'hasNextPage': instance.hasNextPage,
    };

_$_LaunchModel _$$_LaunchModelFromJson(Map<String, dynamic> json) =>
    _$_LaunchModel(
      rocket: json['rocket'] as String?,
      details: json['details'] as String?,
      name: json['name'] as String?,
      dateUtc: json['dateUtc'] == null
          ? null
          : DateTime.parse(json['dateUtc'] as String),
      id: json['id'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$$_LaunchModelToJson(_$_LaunchModel instance) =>
    <String, dynamic>{
      'rocket': instance.rocket,
      'details': instance.details,
      'name': instance.name,
      'dateUtc': instance.dateUtc?.toIso8601String(),
      'id': instance.id,
      'success': instance.success,
    };
