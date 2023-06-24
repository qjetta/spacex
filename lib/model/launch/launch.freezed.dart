// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Launch _$LaunchFromJson(Map<String, dynamic> json) {
  return _Launch.fromJson(json);
}

/// @nodoc
mixin _$Launch {
  @JsonKey(name: 'fairings')
  Fairings? get fairings => throw _privateConstructorUsedError;
  @JsonKey(name: 'links')
  Links? get links => throw _privateConstructorUsedError;
  @JsonKey(name: 'rocket')
  String? get rocket => throw _privateConstructorUsedError;
  @JsonKey(name: 'launchpad')
  String? get launchpad => throw _privateConstructorUsedError;
  @JsonKey(name: 'flight_number')
  int? get flightNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_utc')
  String? get dateUtc => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_local')
  String? get dateLocal => throw _privateConstructorUsedError;
  @JsonKey(name: 'cores')
  List<Cores>? get cores => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchCopyWith<Launch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchCopyWith<$Res> {
  factory $LaunchCopyWith(Launch value, $Res Function(Launch) then) =
      _$LaunchCopyWithImpl<$Res, Launch>;
  @useResult
  $Res call(
      {@JsonKey(name: 'fairings') Fairings? fairings,
      @JsonKey(name: 'links') Links? links,
      @JsonKey(name: 'rocket') String? rocket,
      @JsonKey(name: 'launchpad') String? launchpad,
      @JsonKey(name: 'flight_number') int? flightNumber,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'date_utc') String? dateUtc,
      @JsonKey(name: 'date_local') String? dateLocal,
      @JsonKey(name: 'cores') List<Cores>? cores,
      @JsonKey(name: 'id') String? id});

  $FairingsCopyWith<$Res>? get fairings;
  $LinksCopyWith<$Res>? get links;
}

/// @nodoc
class _$LaunchCopyWithImpl<$Res, $Val extends Launch>
    implements $LaunchCopyWith<$Res> {
  _$LaunchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fairings = freezed,
    Object? links = freezed,
    Object? rocket = freezed,
    Object? launchpad = freezed,
    Object? flightNumber = freezed,
    Object? name = freezed,
    Object? dateUtc = freezed,
    Object? dateLocal = freezed,
    Object? cores = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      fairings: freezed == fairings
          ? _value.fairings
          : fairings // ignore: cast_nullable_to_non_nullable
              as Fairings?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
      rocket: freezed == rocket
          ? _value.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as String?,
      launchpad: freezed == launchpad
          ? _value.launchpad
          : launchpad // ignore: cast_nullable_to_non_nullable
              as String?,
      flightNumber: freezed == flightNumber
          ? _value.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dateUtc: freezed == dateUtc
          ? _value.dateUtc
          : dateUtc // ignore: cast_nullable_to_non_nullable
              as String?,
      dateLocal: freezed == dateLocal
          ? _value.dateLocal
          : dateLocal // ignore: cast_nullable_to_non_nullable
              as String?,
      cores: freezed == cores
          ? _value.cores
          : cores // ignore: cast_nullable_to_non_nullable
              as List<Cores>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FairingsCopyWith<$Res>? get fairings {
    if (_value.fairings == null) {
      return null;
    }

    return $FairingsCopyWith<$Res>(_value.fairings!, (value) {
      return _then(_value.copyWith(fairings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LinksCopyWith<$Res>? get links {
    if (_value.links == null) {
      return null;
    }

    return $LinksCopyWith<$Res>(_value.links!, (value) {
      return _then(_value.copyWith(links: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LaunchCopyWith<$Res> implements $LaunchCopyWith<$Res> {
  factory _$$_LaunchCopyWith(_$_Launch value, $Res Function(_$_Launch) then) =
      __$$_LaunchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'fairings') Fairings? fairings,
      @JsonKey(name: 'links') Links? links,
      @JsonKey(name: 'rocket') String? rocket,
      @JsonKey(name: 'launchpad') String? launchpad,
      @JsonKey(name: 'flight_number') int? flightNumber,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'date_utc') String? dateUtc,
      @JsonKey(name: 'date_local') String? dateLocal,
      @JsonKey(name: 'cores') List<Cores>? cores,
      @JsonKey(name: 'id') String? id});

  @override
  $FairingsCopyWith<$Res>? get fairings;
  @override
  $LinksCopyWith<$Res>? get links;
}

/// @nodoc
class __$$_LaunchCopyWithImpl<$Res>
    extends _$LaunchCopyWithImpl<$Res, _$_Launch>
    implements _$$_LaunchCopyWith<$Res> {
  __$$_LaunchCopyWithImpl(_$_Launch _value, $Res Function(_$_Launch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fairings = freezed,
    Object? links = freezed,
    Object? rocket = freezed,
    Object? launchpad = freezed,
    Object? flightNumber = freezed,
    Object? name = freezed,
    Object? dateUtc = freezed,
    Object? dateLocal = freezed,
    Object? cores = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Launch(
      fairings: freezed == fairings
          ? _value.fairings
          : fairings // ignore: cast_nullable_to_non_nullable
              as Fairings?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as Links?,
      rocket: freezed == rocket
          ? _value.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as String?,
      launchpad: freezed == launchpad
          ? _value.launchpad
          : launchpad // ignore: cast_nullable_to_non_nullable
              as String?,
      flightNumber: freezed == flightNumber
          ? _value.flightNumber
          : flightNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dateUtc: freezed == dateUtc
          ? _value.dateUtc
          : dateUtc // ignore: cast_nullable_to_non_nullable
              as String?,
      dateLocal: freezed == dateLocal
          ? _value.dateLocal
          : dateLocal // ignore: cast_nullable_to_non_nullable
              as String?,
      cores: freezed == cores
          ? _value._cores
          : cores // ignore: cast_nullable_to_non_nullable
              as List<Cores>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Launch implements _Launch {
  _$_Launch(
      {@JsonKey(name: 'fairings') this.fairings,
      @JsonKey(name: 'links') this.links,
      @JsonKey(name: 'rocket') this.rocket,
      @JsonKey(name: 'launchpad') this.launchpad,
      @JsonKey(name: 'flight_number') this.flightNumber,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'date_utc') this.dateUtc,
      @JsonKey(name: 'date_local') this.dateLocal,
      @JsonKey(name: 'cores') final List<Cores>? cores,
      @JsonKey(name: 'id') this.id})
      : _cores = cores;

  factory _$_Launch.fromJson(Map<String, dynamic> json) =>
      _$$_LaunchFromJson(json);

  @override
  @JsonKey(name: 'fairings')
  final Fairings? fairings;
  @override
  @JsonKey(name: 'links')
  final Links? links;
  @override
  @JsonKey(name: 'rocket')
  final String? rocket;
  @override
  @JsonKey(name: 'launchpad')
  final String? launchpad;
  @override
  @JsonKey(name: 'flight_number')
  final int? flightNumber;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'date_utc')
  final String? dateUtc;
  @override
  @JsonKey(name: 'date_local')
  final String? dateLocal;
  final List<Cores>? _cores;
  @override
  @JsonKey(name: 'cores')
  List<Cores>? get cores {
    final value = _cores;
    if (value == null) return null;
    if (_cores is EqualUnmodifiableListView) return _cores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'id')
  final String? id;

  @override
  String toString() {
    return 'Launch(fairings: $fairings, links: $links, rocket: $rocket, launchpad: $launchpad, flightNumber: $flightNumber, name: $name, dateUtc: $dateUtc, dateLocal: $dateLocal, cores: $cores, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Launch &&
            (identical(other.fairings, fairings) ||
                other.fairings == fairings) &&
            (identical(other.links, links) || other.links == links) &&
            (identical(other.rocket, rocket) || other.rocket == rocket) &&
            (identical(other.launchpad, launchpad) ||
                other.launchpad == launchpad) &&
            (identical(other.flightNumber, flightNumber) ||
                other.flightNumber == flightNumber) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateUtc, dateUtc) || other.dateUtc == dateUtc) &&
            (identical(other.dateLocal, dateLocal) ||
                other.dateLocal == dateLocal) &&
            const DeepCollectionEquality().equals(other._cores, _cores) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fairings,
      links,
      rocket,
      launchpad,
      flightNumber,
      name,
      dateUtc,
      dateLocal,
      const DeepCollectionEquality().hash(_cores),
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LaunchCopyWith<_$_Launch> get copyWith =>
      __$$_LaunchCopyWithImpl<_$_Launch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LaunchToJson(
      this,
    );
  }
}

abstract class _Launch implements Launch {
  factory _Launch(
      {@JsonKey(name: 'fairings') final Fairings? fairings,
      @JsonKey(name: 'links') final Links? links,
      @JsonKey(name: 'rocket') final String? rocket,
      @JsonKey(name: 'launchpad') final String? launchpad,
      @JsonKey(name: 'flight_number') final int? flightNumber,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'date_utc') final String? dateUtc,
      @JsonKey(name: 'date_local') final String? dateLocal,
      @JsonKey(name: 'cores') final List<Cores>? cores,
      @JsonKey(name: 'id') final String? id}) = _$_Launch;

  factory _Launch.fromJson(Map<String, dynamic> json) = _$_Launch.fromJson;

  @override
  @JsonKey(name: 'fairings')
  Fairings? get fairings;
  @override
  @JsonKey(name: 'links')
  Links? get links;
  @override
  @JsonKey(name: 'rocket')
  String? get rocket;
  @override
  @JsonKey(name: 'launchpad')
  String? get launchpad;
  @override
  @JsonKey(name: 'flight_number')
  int? get flightNumber;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'date_utc')
  String? get dateUtc;
  @override
  @JsonKey(name: 'date_local')
  String? get dateLocal;
  @override
  @JsonKey(name: 'cores')
  List<Cores>? get cores;
  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_LaunchCopyWith<_$_Launch> get copyWith =>
      throw _privateConstructorUsedError;
}

Fairings _$FairingsFromJson(Map<String, dynamic> json) {
  return _Fairings.fromJson(json);
}

/// @nodoc
mixin _$Fairings {
  @JsonKey(name: 'reused')
  bool? get reused => throw _privateConstructorUsedError;
  @JsonKey(name: 'recovery_attempt')
  bool? get recoveryAttempt => throw _privateConstructorUsedError;
  @JsonKey(name: 'recovered')
  bool? get recovered => throw _privateConstructorUsedError;
  @JsonKey(name: 'ships')
  List<String>? get ships => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FairingsCopyWith<Fairings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FairingsCopyWith<$Res> {
  factory $FairingsCopyWith(Fairings value, $Res Function(Fairings) then) =
      _$FairingsCopyWithImpl<$Res, Fairings>;
  @useResult
  $Res call(
      {@JsonKey(name: 'reused') bool? reused,
      @JsonKey(name: 'recovery_attempt') bool? recoveryAttempt,
      @JsonKey(name: 'recovered') bool? recovered,
      @JsonKey(name: 'ships') List<String>? ships});
}

/// @nodoc
class _$FairingsCopyWithImpl<$Res, $Val extends Fairings>
    implements $FairingsCopyWith<$Res> {
  _$FairingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reused = freezed,
    Object? recoveryAttempt = freezed,
    Object? recovered = freezed,
    Object? ships = freezed,
  }) {
    return _then(_value.copyWith(
      reused: freezed == reused
          ? _value.reused
          : reused // ignore: cast_nullable_to_non_nullable
              as bool?,
      recoveryAttempt: freezed == recoveryAttempt
          ? _value.recoveryAttempt
          : recoveryAttempt // ignore: cast_nullable_to_non_nullable
              as bool?,
      recovered: freezed == recovered
          ? _value.recovered
          : recovered // ignore: cast_nullable_to_non_nullable
              as bool?,
      ships: freezed == ships
          ? _value.ships
          : ships // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FairingsCopyWith<$Res> implements $FairingsCopyWith<$Res> {
  factory _$$_FairingsCopyWith(
          _$_Fairings value, $Res Function(_$_Fairings) then) =
      __$$_FairingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'reused') bool? reused,
      @JsonKey(name: 'recovery_attempt') bool? recoveryAttempt,
      @JsonKey(name: 'recovered') bool? recovered,
      @JsonKey(name: 'ships') List<String>? ships});
}

/// @nodoc
class __$$_FairingsCopyWithImpl<$Res>
    extends _$FairingsCopyWithImpl<$Res, _$_Fairings>
    implements _$$_FairingsCopyWith<$Res> {
  __$$_FairingsCopyWithImpl(
      _$_Fairings _value, $Res Function(_$_Fairings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reused = freezed,
    Object? recoveryAttempt = freezed,
    Object? recovered = freezed,
    Object? ships = freezed,
  }) {
    return _then(_$_Fairings(
      reused: freezed == reused
          ? _value.reused
          : reused // ignore: cast_nullable_to_non_nullable
              as bool?,
      recoveryAttempt: freezed == recoveryAttempt
          ? _value.recoveryAttempt
          : recoveryAttempt // ignore: cast_nullable_to_non_nullable
              as bool?,
      recovered: freezed == recovered
          ? _value.recovered
          : recovered // ignore: cast_nullable_to_non_nullable
              as bool?,
      ships: freezed == ships
          ? _value._ships
          : ships // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_Fairings implements _Fairings {
  _$_Fairings(
      {@JsonKey(name: 'reused') this.reused,
      @JsonKey(name: 'recovery_attempt') this.recoveryAttempt,
      @JsonKey(name: 'recovered') this.recovered,
      @JsonKey(name: 'ships') final List<String>? ships})
      : _ships = ships;

  factory _$_Fairings.fromJson(Map<String, dynamic> json) =>
      _$$_FairingsFromJson(json);

  @override
  @JsonKey(name: 'reused')
  final bool? reused;
  @override
  @JsonKey(name: 'recovery_attempt')
  final bool? recoveryAttempt;
  @override
  @JsonKey(name: 'recovered')
  final bool? recovered;
  final List<String>? _ships;
  @override
  @JsonKey(name: 'ships')
  List<String>? get ships {
    final value = _ships;
    if (value == null) return null;
    if (_ships is EqualUnmodifiableListView) return _ships;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Fairings(reused: $reused, recoveryAttempt: $recoveryAttempt, recovered: $recovered, ships: $ships)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Fairings &&
            (identical(other.reused, reused) || other.reused == reused) &&
            (identical(other.recoveryAttempt, recoveryAttempt) ||
                other.recoveryAttempt == recoveryAttempt) &&
            (identical(other.recovered, recovered) ||
                other.recovered == recovered) &&
            const DeepCollectionEquality().equals(other._ships, _ships));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reused, recoveryAttempt,
      recovered, const DeepCollectionEquality().hash(_ships));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FairingsCopyWith<_$_Fairings> get copyWith =>
      __$$_FairingsCopyWithImpl<_$_Fairings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FairingsToJson(
      this,
    );
  }
}

abstract class _Fairings implements Fairings {
  factory _Fairings(
      {@JsonKey(name: 'reused') final bool? reused,
      @JsonKey(name: 'recovery_attempt') final bool? recoveryAttempt,
      @JsonKey(name: 'recovered') final bool? recovered,
      @JsonKey(name: 'ships') final List<String>? ships}) = _$_Fairings;

  factory _Fairings.fromJson(Map<String, dynamic> json) = _$_Fairings.fromJson;

  @override
  @JsonKey(name: 'reused')
  bool? get reused;
  @override
  @JsonKey(name: 'recovery_attempt')
  bool? get recoveryAttempt;
  @override
  @JsonKey(name: 'recovered')
  bool? get recovered;
  @override
  @JsonKey(name: 'ships')
  List<String>? get ships;
  @override
  @JsonKey(ignore: true)
  _$$_FairingsCopyWith<_$_Fairings> get copyWith =>
      throw _privateConstructorUsedError;
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return _Links.fromJson(json);
}

/// @nodoc
mixin _$Links {
  @JsonKey(name: 'patch')
  Patch? get patch => throw _privateConstructorUsedError;
  @JsonKey(name: 'presskit')
  String? get presskit => throw _privateConstructorUsedError;
  @JsonKey(name: 'webcast')
  String? get webcast => throw _privateConstructorUsedError;
  @JsonKey(name: 'youtube_id')
  String? get youtubeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'article')
  String? get article => throw _privateConstructorUsedError;
  @JsonKey(name: 'wikipedia')
  String? get wikipedia => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinksCopyWith<Links> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinksCopyWith<$Res> {
  factory $LinksCopyWith(Links value, $Res Function(Links) then) =
      _$LinksCopyWithImpl<$Res, Links>;
  @useResult
  $Res call(
      {@JsonKey(name: 'patch') Patch? patch,
      @JsonKey(name: 'presskit') String? presskit,
      @JsonKey(name: 'webcast') String? webcast,
      @JsonKey(name: 'youtube_id') String? youtubeId,
      @JsonKey(name: 'article') String? article,
      @JsonKey(name: 'wikipedia') String? wikipedia});

  $PatchCopyWith<$Res>? get patch;
}

/// @nodoc
class _$LinksCopyWithImpl<$Res, $Val extends Links>
    implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patch = freezed,
    Object? presskit = freezed,
    Object? webcast = freezed,
    Object? youtubeId = freezed,
    Object? article = freezed,
    Object? wikipedia = freezed,
  }) {
    return _then(_value.copyWith(
      patch: freezed == patch
          ? _value.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as Patch?,
      presskit: freezed == presskit
          ? _value.presskit
          : presskit // ignore: cast_nullable_to_non_nullable
              as String?,
      webcast: freezed == webcast
          ? _value.webcast
          : webcast // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeId: freezed == youtubeId
          ? _value.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      wikipedia: freezed == wikipedia
          ? _value.wikipedia
          : wikipedia // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PatchCopyWith<$Res>? get patch {
    if (_value.patch == null) {
      return null;
    }

    return $PatchCopyWith<$Res>(_value.patch!, (value) {
      return _then(_value.copyWith(patch: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LinksCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$$_LinksCopyWith(_$_Links value, $Res Function(_$_Links) then) =
      __$$_LinksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'patch') Patch? patch,
      @JsonKey(name: 'presskit') String? presskit,
      @JsonKey(name: 'webcast') String? webcast,
      @JsonKey(name: 'youtube_id') String? youtubeId,
      @JsonKey(name: 'article') String? article,
      @JsonKey(name: 'wikipedia') String? wikipedia});

  @override
  $PatchCopyWith<$Res>? get patch;
}

/// @nodoc
class __$$_LinksCopyWithImpl<$Res> extends _$LinksCopyWithImpl<$Res, _$_Links>
    implements _$$_LinksCopyWith<$Res> {
  __$$_LinksCopyWithImpl(_$_Links _value, $Res Function(_$_Links) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? patch = freezed,
    Object? presskit = freezed,
    Object? webcast = freezed,
    Object? youtubeId = freezed,
    Object? article = freezed,
    Object? wikipedia = freezed,
  }) {
    return _then(_$_Links(
      patch: freezed == patch
          ? _value.patch
          : patch // ignore: cast_nullable_to_non_nullable
              as Patch?,
      presskit: freezed == presskit
          ? _value.presskit
          : presskit // ignore: cast_nullable_to_non_nullable
              as String?,
      webcast: freezed == webcast
          ? _value.webcast
          : webcast // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeId: freezed == youtubeId
          ? _value.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      article: freezed == article
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as String?,
      wikipedia: freezed == wikipedia
          ? _value.wikipedia
          : wikipedia // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_Links implements _Links {
  _$_Links(
      {@JsonKey(name: 'patch') this.patch,
      @JsonKey(name: 'presskit') this.presskit,
      @JsonKey(name: 'webcast') this.webcast,
      @JsonKey(name: 'youtube_id') this.youtubeId,
      @JsonKey(name: 'article') this.article,
      @JsonKey(name: 'wikipedia') this.wikipedia});

  factory _$_Links.fromJson(Map<String, dynamic> json) =>
      _$$_LinksFromJson(json);

  @override
  @JsonKey(name: 'patch')
  final Patch? patch;
  @override
  @JsonKey(name: 'presskit')
  final String? presskit;
  @override
  @JsonKey(name: 'webcast')
  final String? webcast;
  @override
  @JsonKey(name: 'youtube_id')
  final String? youtubeId;
  @override
  @JsonKey(name: 'article')
  final String? article;
  @override
  @JsonKey(name: 'wikipedia')
  final String? wikipedia;

  @override
  String toString() {
    return 'Links(patch: $patch, presskit: $presskit, webcast: $webcast, youtubeId: $youtubeId, article: $article, wikipedia: $wikipedia)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Links &&
            (identical(other.patch, patch) || other.patch == patch) &&
            (identical(other.presskit, presskit) ||
                other.presskit == presskit) &&
            (identical(other.webcast, webcast) || other.webcast == webcast) &&
            (identical(other.youtubeId, youtubeId) ||
                other.youtubeId == youtubeId) &&
            (identical(other.article, article) || other.article == article) &&
            (identical(other.wikipedia, wikipedia) ||
                other.wikipedia == wikipedia));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, patch, presskit, webcast, youtubeId, article, wikipedia);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinksCopyWith<_$_Links> get copyWith =>
      __$$_LinksCopyWithImpl<_$_Links>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinksToJson(
      this,
    );
  }
}

abstract class _Links implements Links {
  factory _Links(
      {@JsonKey(name: 'patch') final Patch? patch,
      @JsonKey(name: 'presskit') final String? presskit,
      @JsonKey(name: 'webcast') final String? webcast,
      @JsonKey(name: 'youtube_id') final String? youtubeId,
      @JsonKey(name: 'article') final String? article,
      @JsonKey(name: 'wikipedia') final String? wikipedia}) = _$_Links;

  factory _Links.fromJson(Map<String, dynamic> json) = _$_Links.fromJson;

  @override
  @JsonKey(name: 'patch')
  Patch? get patch;
  @override
  @JsonKey(name: 'presskit')
  String? get presskit;
  @override
  @JsonKey(name: 'webcast')
  String? get webcast;
  @override
  @JsonKey(name: 'youtube_id')
  String? get youtubeId;
  @override
  @JsonKey(name: 'article')
  String? get article;
  @override
  @JsonKey(name: 'wikipedia')
  String? get wikipedia;
  @override
  @JsonKey(ignore: true)
  _$$_LinksCopyWith<_$_Links> get copyWith =>
      throw _privateConstructorUsedError;
}

Patch _$PatchFromJson(Map<String, dynamic> json) {
  return _Patch.fromJson(json);
}

/// @nodoc
mixin _$Patch {
  @JsonKey(name: 'small')
  String? get small => throw _privateConstructorUsedError;
  @JsonKey(name: 'large')
  String? get large => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PatchCopyWith<Patch> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatchCopyWith<$Res> {
  factory $PatchCopyWith(Patch value, $Res Function(Patch) then) =
      _$PatchCopyWithImpl<$Res, Patch>;
  @useResult
  $Res call(
      {@JsonKey(name: 'small') String? small,
      @JsonKey(name: 'large') String? large});
}

/// @nodoc
class _$PatchCopyWithImpl<$Res, $Val extends Patch>
    implements $PatchCopyWith<$Res> {
  _$PatchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? large = freezed,
  }) {
    return _then(_value.copyWith(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PatchCopyWith<$Res> implements $PatchCopyWith<$Res> {
  factory _$$_PatchCopyWith(_$_Patch value, $Res Function(_$_Patch) then) =
      __$$_PatchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'small') String? small,
      @JsonKey(name: 'large') String? large});
}

/// @nodoc
class __$$_PatchCopyWithImpl<$Res> extends _$PatchCopyWithImpl<$Res, _$_Patch>
    implements _$$_PatchCopyWith<$Res> {
  __$$_PatchCopyWithImpl(_$_Patch _value, $Res Function(_$_Patch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? large = freezed,
  }) {
    return _then(_$_Patch(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_Patch implements _Patch {
  _$_Patch(
      {@JsonKey(name: 'small') this.small, @JsonKey(name: 'large') this.large});

  factory _$_Patch.fromJson(Map<String, dynamic> json) =>
      _$$_PatchFromJson(json);

  @override
  @JsonKey(name: 'small')
  final String? small;
  @override
  @JsonKey(name: 'large')
  final String? large;

  @override
  String toString() {
    return 'Patch(small: $small, large: $large)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Patch &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PatchCopyWith<_$_Patch> get copyWith =>
      __$$_PatchCopyWithImpl<_$_Patch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PatchToJson(
      this,
    );
  }
}

abstract class _Patch implements Patch {
  factory _Patch(
      {@JsonKey(name: 'small') final String? small,
      @JsonKey(name: 'large') final String? large}) = _$_Patch;

  factory _Patch.fromJson(Map<String, dynamic> json) = _$_Patch.fromJson;

  @override
  @JsonKey(name: 'small')
  String? get small;
  @override
  @JsonKey(name: 'large')
  String? get large;
  @override
  @JsonKey(ignore: true)
  _$$_PatchCopyWith<_$_Patch> get copyWith =>
      throw _privateConstructorUsedError;
}

Cores _$CoresFromJson(Map<String, dynamic> json) {
  return _Cores.fromJson(json);
}

/// @nodoc
mixin _$Cores {
  @JsonKey(name: 'core')
  String? get core => throw _privateConstructorUsedError;
  @JsonKey(name: 'flight')
  int? get flight => throw _privateConstructorUsedError;
  @JsonKey(name: 'gridfins')
  bool? get gridfins => throw _privateConstructorUsedError;
  @JsonKey(name: 'legs')
  bool? get legs => throw _privateConstructorUsedError;
  @JsonKey(name: 'reused')
  bool? get reused => throw _privateConstructorUsedError;
  @JsonKey(name: 'landing_attempt')
  bool? get landingAttempt => throw _privateConstructorUsedError;
  @JsonKey(name: 'landing_success')
  bool? get landingSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: 'landing_type')
  String? get landingType => throw _privateConstructorUsedError;
  @JsonKey(name: 'landpad')
  String? get landpad => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoresCopyWith<Cores> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoresCopyWith<$Res> {
  factory $CoresCopyWith(Cores value, $Res Function(Cores) then) =
      _$CoresCopyWithImpl<$Res, Cores>;
  @useResult
  $Res call(
      {@JsonKey(name: 'core') String? core,
      @JsonKey(name: 'flight') int? flight,
      @JsonKey(name: 'gridfins') bool? gridfins,
      @JsonKey(name: 'legs') bool? legs,
      @JsonKey(name: 'reused') bool? reused,
      @JsonKey(name: 'landing_attempt') bool? landingAttempt,
      @JsonKey(name: 'landing_success') bool? landingSuccess,
      @JsonKey(name: 'landing_type') String? landingType,
      @JsonKey(name: 'landpad') String? landpad});
}

/// @nodoc
class _$CoresCopyWithImpl<$Res, $Val extends Cores>
    implements $CoresCopyWith<$Res> {
  _$CoresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? core = freezed,
    Object? flight = freezed,
    Object? gridfins = freezed,
    Object? legs = freezed,
    Object? reused = freezed,
    Object? landingAttempt = freezed,
    Object? landingSuccess = freezed,
    Object? landingType = freezed,
    Object? landpad = freezed,
  }) {
    return _then(_value.copyWith(
      core: freezed == core
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as String?,
      flight: freezed == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as int?,
      gridfins: freezed == gridfins
          ? _value.gridfins
          : gridfins // ignore: cast_nullable_to_non_nullable
              as bool?,
      legs: freezed == legs
          ? _value.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as bool?,
      reused: freezed == reused
          ? _value.reused
          : reused // ignore: cast_nullable_to_non_nullable
              as bool?,
      landingAttempt: freezed == landingAttempt
          ? _value.landingAttempt
          : landingAttempt // ignore: cast_nullable_to_non_nullable
              as bool?,
      landingSuccess: freezed == landingSuccess
          ? _value.landingSuccess
          : landingSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      landingType: freezed == landingType
          ? _value.landingType
          : landingType // ignore: cast_nullable_to_non_nullable
              as String?,
      landpad: freezed == landpad
          ? _value.landpad
          : landpad // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoresCopyWith<$Res> implements $CoresCopyWith<$Res> {
  factory _$$_CoresCopyWith(_$_Cores value, $Res Function(_$_Cores) then) =
      __$$_CoresCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'core') String? core,
      @JsonKey(name: 'flight') int? flight,
      @JsonKey(name: 'gridfins') bool? gridfins,
      @JsonKey(name: 'legs') bool? legs,
      @JsonKey(name: 'reused') bool? reused,
      @JsonKey(name: 'landing_attempt') bool? landingAttempt,
      @JsonKey(name: 'landing_success') bool? landingSuccess,
      @JsonKey(name: 'landing_type') String? landingType,
      @JsonKey(name: 'landpad') String? landpad});
}

/// @nodoc
class __$$_CoresCopyWithImpl<$Res> extends _$CoresCopyWithImpl<$Res, _$_Cores>
    implements _$$_CoresCopyWith<$Res> {
  __$$_CoresCopyWithImpl(_$_Cores _value, $Res Function(_$_Cores) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? core = freezed,
    Object? flight = freezed,
    Object? gridfins = freezed,
    Object? legs = freezed,
    Object? reused = freezed,
    Object? landingAttempt = freezed,
    Object? landingSuccess = freezed,
    Object? landingType = freezed,
    Object? landpad = freezed,
  }) {
    return _then(_$_Cores(
      core: freezed == core
          ? _value.core
          : core // ignore: cast_nullable_to_non_nullable
              as String?,
      flight: freezed == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as int?,
      gridfins: freezed == gridfins
          ? _value.gridfins
          : gridfins // ignore: cast_nullable_to_non_nullable
              as bool?,
      legs: freezed == legs
          ? _value.legs
          : legs // ignore: cast_nullable_to_non_nullable
              as bool?,
      reused: freezed == reused
          ? _value.reused
          : reused // ignore: cast_nullable_to_non_nullable
              as bool?,
      landingAttempt: freezed == landingAttempt
          ? _value.landingAttempt
          : landingAttempt // ignore: cast_nullable_to_non_nullable
              as bool?,
      landingSuccess: freezed == landingSuccess
          ? _value.landingSuccess
          : landingSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      landingType: freezed == landingType
          ? _value.landingType
          : landingType // ignore: cast_nullable_to_non_nullable
              as String?,
      landpad: freezed == landpad
          ? _value.landpad
          : landpad // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_Cores implements _Cores {
  _$_Cores(
      {@JsonKey(name: 'core') this.core,
      @JsonKey(name: 'flight') this.flight,
      @JsonKey(name: 'gridfins') this.gridfins,
      @JsonKey(name: 'legs') this.legs,
      @JsonKey(name: 'reused') this.reused,
      @JsonKey(name: 'landing_attempt') this.landingAttempt,
      @JsonKey(name: 'landing_success') this.landingSuccess,
      @JsonKey(name: 'landing_type') this.landingType,
      @JsonKey(name: 'landpad') this.landpad});

  factory _$_Cores.fromJson(Map<String, dynamic> json) =>
      _$$_CoresFromJson(json);

  @override
  @JsonKey(name: 'core')
  final String? core;
  @override
  @JsonKey(name: 'flight')
  final int? flight;
  @override
  @JsonKey(name: 'gridfins')
  final bool? gridfins;
  @override
  @JsonKey(name: 'legs')
  final bool? legs;
  @override
  @JsonKey(name: 'reused')
  final bool? reused;
  @override
  @JsonKey(name: 'landing_attempt')
  final bool? landingAttempt;
  @override
  @JsonKey(name: 'landing_success')
  final bool? landingSuccess;
  @override
  @JsonKey(name: 'landing_type')
  final String? landingType;
  @override
  @JsonKey(name: 'landpad')
  final String? landpad;

  @override
  String toString() {
    return 'Cores(core: $core, flight: $flight, gridfins: $gridfins, legs: $legs, reused: $reused, landingAttempt: $landingAttempt, landingSuccess: $landingSuccess, landingType: $landingType, landpad: $landpad)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cores &&
            (identical(other.core, core) || other.core == core) &&
            (identical(other.flight, flight) || other.flight == flight) &&
            (identical(other.gridfins, gridfins) ||
                other.gridfins == gridfins) &&
            (identical(other.legs, legs) || other.legs == legs) &&
            (identical(other.reused, reused) || other.reused == reused) &&
            (identical(other.landingAttempt, landingAttempt) ||
                other.landingAttempt == landingAttempt) &&
            (identical(other.landingSuccess, landingSuccess) ||
                other.landingSuccess == landingSuccess) &&
            (identical(other.landingType, landingType) ||
                other.landingType == landingType) &&
            (identical(other.landpad, landpad) || other.landpad == landpad));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, core, flight, gridfins, legs,
      reused, landingAttempt, landingSuccess, landingType, landpad);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoresCopyWith<_$_Cores> get copyWith =>
      __$$_CoresCopyWithImpl<_$_Cores>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoresToJson(
      this,
    );
  }
}

abstract class _Cores implements Cores {
  factory _Cores(
      {@JsonKey(name: 'core') final String? core,
      @JsonKey(name: 'flight') final int? flight,
      @JsonKey(name: 'gridfins') final bool? gridfins,
      @JsonKey(name: 'legs') final bool? legs,
      @JsonKey(name: 'reused') final bool? reused,
      @JsonKey(name: 'landing_attempt') final bool? landingAttempt,
      @JsonKey(name: 'landing_success') final bool? landingSuccess,
      @JsonKey(name: 'landing_type') final String? landingType,
      @JsonKey(name: 'landpad') final String? landpad}) = _$_Cores;

  factory _Cores.fromJson(Map<String, dynamic> json) = _$_Cores.fromJson;

  @override
  @JsonKey(name: 'core')
  String? get core;
  @override
  @JsonKey(name: 'flight')
  int? get flight;
  @override
  @JsonKey(name: 'gridfins')
  bool? get gridfins;
  @override
  @JsonKey(name: 'legs')
  bool? get legs;
  @override
  @JsonKey(name: 'reused')
  bool? get reused;
  @override
  @JsonKey(name: 'landing_attempt')
  bool? get landingAttempt;
  @override
  @JsonKey(name: 'landing_success')
  bool? get landingSuccess;
  @override
  @JsonKey(name: 'landing_type')
  String? get landingType;
  @override
  @JsonKey(name: 'landpad')
  String? get landpad;
  @override
  @JsonKey(ignore: true)
  _$$_CoresCopyWith<_$_Cores> get copyWith =>
      throw _privateConstructorUsedError;
}
