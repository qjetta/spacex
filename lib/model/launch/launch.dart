import 'package:freezed_annotation/freezed_annotation.dart';

part 'launch.freezed.dart';
part 'launch.g.dart';

@freezed
class Launch with _$Launch {
  factory Launch({
    @JsonKey(name: 'fairings') Fairings? fairings,
    @JsonKey(name: 'links') Links? links,
    @JsonKey(name: 'rocket') String? rocket,
    @JsonKey(name: 'launchpad') String? launchpad,
    @JsonKey(name: 'flight_number') int? flightNumber,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'date_utc') String? dateUtc,
    @JsonKey(name: 'date_local') String? dateLocal,
    @JsonKey(name: 'cores') List<Cores>? cores,
    @JsonKey(name: 'id') String? id,
  }) = _Launch;

  factory Launch.fromJson(Map<String, dynamic> json) => _$LaunchFromJson(json);
}

@freezed
class Fairings with _$Fairings {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory Fairings({
    @JsonKey(name: 'reused') bool? reused,
    @JsonKey(name: 'recovery_attempt') bool? recoveryAttempt,
    @JsonKey(name: 'recovered') bool? recovered,
    @JsonKey(name: 'ships') List<String>? ships,
  }) = _Fairings;

  factory Fairings.fromJson(Map<String, dynamic> json) =>
      _$FairingsFromJson(json);
}

@freezed
class Links with _$Links {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory Links({
    @JsonKey(name: 'patch') Patch? patch,
    @JsonKey(name: 'presskit') String? presskit,
    @JsonKey(name: 'webcast') String? webcast,
    @JsonKey(name: 'youtube_id') String? youtubeId,
    @JsonKey(name: 'article') String? article,
    @JsonKey(name: 'wikipedia') String? wikipedia,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}

@freezed
class Patch with _$Patch {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory Patch({
    @JsonKey(name: 'small') String? small,
    @JsonKey(name: 'large') String? large,
  }) = _Patch;

  factory Patch.fromJson(Map<String, dynamic> json) => _$PatchFromJson(json);
}

@freezed
class Cores with _$Cores {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory Cores({
    @JsonKey(name: 'core') String? core,
    @JsonKey(name: 'flight') int? flight,
    @JsonKey(name: 'gridfins') bool? gridfins,
    @JsonKey(name: 'legs') bool? legs,
    @JsonKey(name: 'reused') bool? reused,
    @JsonKey(name: 'landing_attempt') bool? landingAttempt,
    @JsonKey(name: 'landing_success') bool? landingSuccess,
    @JsonKey(name: 'landing_type') String? landingType,
    @JsonKey(name: 'landpad') String? landpad,
  }) = _Cores;

  factory Cores.fromJson(Map<String, dynamic> json) => _$CoresFromJson(json);
}
