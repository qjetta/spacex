// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crew.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Crew _$$_CrewFromJson(Map<String, dynamic> json) => _$_Crew(
      crew: (json['crew'] as List<dynamic>)
          .map((e) => Person.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CrewToJson(_$_Crew instance) => <String, dynamic>{
      'crew': instance.crew,
    };

_$_Person _$$_PersonFromJson(Map<String, dynamic> json) => _$_Person(
      name: json['name'] as String,
      agency: json['agency'] as String,
      image: json['image'] as String,
      wikipedia: json['wikipedia'] as String,
      launches:
          (json['launches'] as List<dynamic>).map((e) => e as String).toList(),
      status: json['status'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_PersonToJson(_$_Person instance) => <String, dynamic>{
      'name': instance.name,
      'agency': instance.agency,
      'image': instance.image,
      'wikipedia': instance.wikipedia,
      'launches': instance.launches,
      'status': instance.status,
      'id': instance.id,
    };
