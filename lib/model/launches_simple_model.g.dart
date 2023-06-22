// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launches_simple_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchesSimpleModel _$LaunchesSimpleModelFromJson(Map<String, dynamic> json) =>
    LaunchesSimpleModel(
      launches: (json['docs'] as List<dynamic>?)
          ?.map((e) => LaunchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalDocs: json['totalDocs'] as int?,
      limit: json['limit'] as int?,
      totalPages: json['totalPages'] as int?,
      page: json['page'] as int?,
      pagingCounter: json['pagingCounter'] as int?,
      hasPrevPage: json['hasPrevPage'] as bool?,
      hasNextPage: json['hasNextPage'] as bool?,
      prevPage: json['prevPage'] as int?,
      nextPage: json['nextPage'] as int?,
    );

Map<String, dynamic> _$LaunchesSimpleModelToJson(
        LaunchesSimpleModel instance) =>
    <String, dynamic>{
      'docs': instance.launches,
      'totalDocs': instance.totalDocs,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
      'page': instance.page,
      'pagingCounter': instance.pagingCounter,
      'hasPrevPage': instance.hasPrevPage,
      'hasNextPage': instance.hasNextPage,
      'prevPage': instance.prevPage,
      'nextPage': instance.nextPage,
    };

LaunchModel _$LaunchModelFromJson(Map<String, dynamic> json) => LaunchModel(
      rocket: json['rocket'] as String?,
      details: json['details'] as String?,
      name: json['name'] as String?,
      dateUtc: json['date_utc'] as String?,
      id: json['id'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$LaunchModelToJson(LaunchModel instance) =>
    <String, dynamic>{
      'rocket': instance.rocket,
      'details': instance.details,
      'name': instance.name,
      'date_utc': instance.dateUtc,
      'id': instance.id,
      'success': instance.success,
    };
