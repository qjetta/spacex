// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Launch _$$_LaunchFromJson(Map<String, dynamic> json) => _$_Launch(
      fairings: json['fairings'] == null
          ? null
          : Fairings.fromJson(json['fairings'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
      rocket: json['rocket'] as String?,
      launchpad: json['launchpad'] as String?,
      flightNumber: json['flight_number'] as int?,
      name: json['name'] as String?,
      dateUtc: json['date_utc'] as String?,
      dateLocal: json['date_local'] as String?,
      cores: (json['cores'] as List<dynamic>?)
          ?.map((e) => Cores.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_LaunchToJson(_$_Launch instance) => <String, dynamic>{
      'fairings': instance.fairings,
      'links': instance.links,
      'rocket': instance.rocket,
      'launchpad': instance.launchpad,
      'flight_number': instance.flightNumber,
      'name': instance.name,
      'date_utc': instance.dateUtc,
      'date_local': instance.dateLocal,
      'cores': instance.cores,
      'id': instance.id,
    };

_$_Fairings _$$_FairingsFromJson(Map<String, dynamic> json) => _$_Fairings(
      reused: json['reused'] as bool?,
      recoveryAttempt: json['recovery_attempt'] as bool?,
      recovered: json['recovered'] as bool?,
      ships:
          (json['ships'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_FairingsToJson(_$_Fairings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reused', instance.reused);
  writeNotNull('recovery_attempt', instance.recoveryAttempt);
  writeNotNull('recovered', instance.recovered);
  writeNotNull('ships', instance.ships);
  return val;
}

_$_Links _$$_LinksFromJson(Map<String, dynamic> json) => _$_Links(
      patch: json['patch'] == null
          ? null
          : Patch.fromJson(json['patch'] as Map<String, dynamic>),
      presskit: json['presskit'] as String?,
      webcast: json['webcast'] as String?,
      youtubeId: json['youtube_id'] as String?,
      article: json['article'] as String?,
      wikipedia: json['wikipedia'] as String?,
    );

Map<String, dynamic> _$$_LinksToJson(_$_Links instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('patch', instance.patch?.toJson());
  writeNotNull('presskit', instance.presskit);
  writeNotNull('webcast', instance.webcast);
  writeNotNull('youtube_id', instance.youtubeId);
  writeNotNull('article', instance.article);
  writeNotNull('wikipedia', instance.wikipedia);
  return val;
}

_$_Patch _$$_PatchFromJson(Map<String, dynamic> json) => _$_Patch(
      small: json['small'] as String?,
      large: json['large'] as String?,
    );

Map<String, dynamic> _$$_PatchToJson(_$_Patch instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('small', instance.small);
  writeNotNull('large', instance.large);
  return val;
}

_$_Cores _$$_CoresFromJson(Map<String, dynamic> json) => _$_Cores(
      core: json['core'] as String?,
      flight: json['flight'] as int?,
      gridfins: json['gridfins'] as bool?,
      legs: json['legs'] as bool?,
      reused: json['reused'] as bool?,
      landingAttempt: json['landing_attempt'] as bool?,
      landingSuccess: json['landing_success'] as bool?,
      landingType: json['landing_type'] as String?,
      landpad: json['landpad'] as String?,
    );

Map<String, dynamic> _$$_CoresToJson(_$_Cores instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('core', instance.core);
  writeNotNull('flight', instance.flight);
  writeNotNull('gridfins', instance.gridfins);
  writeNotNull('legs', instance.legs);
  writeNotNull('reused', instance.reused);
  writeNotNull('landing_attempt', instance.landingAttempt);
  writeNotNull('landing_success', instance.landingSuccess);
  writeNotNull('landing_type', instance.landingType);
  writeNotNull('landpad', instance.landpad);
  return val;
}
