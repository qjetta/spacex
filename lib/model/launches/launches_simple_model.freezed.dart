// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launches_simple_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LaunchesSimpleModel _$LaunchesSimpleModelFromJson(Map<String, dynamic> json) {
  return _LaunchesModel.fromJson(json);
}

/// @nodoc
mixin _$LaunchesSimpleModel {
  @JsonKey(name: 'docs')
  List<LaunchModel>? get launches => throw _privateConstructorUsedError;
  int? get totalDocs => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get totalPages => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  bool? get hasNextPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchesSimpleModelCopyWith<LaunchesSimpleModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchesSimpleModelCopyWith<$Res> {
  factory $LaunchesSimpleModelCopyWith(
          LaunchesSimpleModel value, $Res Function(LaunchesSimpleModel) then) =
      _$LaunchesSimpleModelCopyWithImpl<$Res, LaunchesSimpleModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'docs') List<LaunchModel>? launches,
      int? totalDocs,
      int? limit,
      int? totalPages,
      int? page,
      bool? hasNextPage});
}

/// @nodoc
class _$LaunchesSimpleModelCopyWithImpl<$Res, $Val extends LaunchesSimpleModel>
    implements $LaunchesSimpleModelCopyWith<$Res> {
  _$LaunchesSimpleModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? launches = freezed,
    Object? totalDocs = freezed,
    Object? limit = freezed,
    Object? totalPages = freezed,
    Object? page = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_value.copyWith(
      launches: freezed == launches
          ? _value.launches
          : launches // ignore: cast_nullable_to_non_nullable
              as List<LaunchModel>?,
      totalDocs: freezed == totalDocs
          ? _value.totalDocs
          : totalDocs // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LaunchesModelCopyWith<$Res>
    implements $LaunchesSimpleModelCopyWith<$Res> {
  factory _$$_LaunchesModelCopyWith(
          _$_LaunchesModel value, $Res Function(_$_LaunchesModel) then) =
      __$$_LaunchesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'docs') List<LaunchModel>? launches,
      int? totalDocs,
      int? limit,
      int? totalPages,
      int? page,
      bool? hasNextPage});
}

/// @nodoc
class __$$_LaunchesModelCopyWithImpl<$Res>
    extends _$LaunchesSimpleModelCopyWithImpl<$Res, _$_LaunchesModel>
    implements _$$_LaunchesModelCopyWith<$Res> {
  __$$_LaunchesModelCopyWithImpl(
      _$_LaunchesModel _value, $Res Function(_$_LaunchesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? launches = freezed,
    Object? totalDocs = freezed,
    Object? limit = freezed,
    Object? totalPages = freezed,
    Object? page = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_$_LaunchesModel(
      launches: freezed == launches
          ? _value._launches
          : launches // ignore: cast_nullable_to_non_nullable
              as List<LaunchModel>?,
      totalDocs: freezed == totalDocs
          ? _value.totalDocs
          : totalDocs // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      hasNextPage: freezed == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$_LaunchesModel implements _LaunchesModel {
  _$_LaunchesModel(
      {@JsonKey(name: 'docs') final List<LaunchModel>? launches,
      this.totalDocs,
      this.limit,
      this.totalPages,
      this.page,
      this.hasNextPage})
      : _launches = launches;

  factory _$_LaunchesModel.fromJson(Map<String, dynamic> json) =>
      _$$_LaunchesModelFromJson(json);

  final List<LaunchModel>? _launches;
  @override
  @JsonKey(name: 'docs')
  List<LaunchModel>? get launches {
    final value = _launches;
    if (value == null) return null;
    if (_launches is EqualUnmodifiableListView) return _launches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalDocs;
  @override
  final int? limit;
  @override
  final int? totalPages;
  @override
  final int? page;
  @override
  final bool? hasNextPage;

  @override
  String toString() {
    return 'LaunchesSimpleModel(launches: $launches, totalDocs: $totalDocs, limit: $limit, totalPages: $totalPages, page: $page, hasNextPage: $hasNextPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LaunchesModel &&
            const DeepCollectionEquality().equals(other._launches, _launches) &&
            (identical(other.totalDocs, totalDocs) ||
                other.totalDocs == totalDocs) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_launches),
      totalDocs,
      limit,
      totalPages,
      page,
      hasNextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LaunchesModelCopyWith<_$_LaunchesModel> get copyWith =>
      __$$_LaunchesModelCopyWithImpl<_$_LaunchesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LaunchesModelToJson(
      this,
    );
  }
}

abstract class _LaunchesModel implements LaunchesSimpleModel {
  factory _LaunchesModel(
      {@JsonKey(name: 'docs') final List<LaunchModel>? launches,
      final int? totalDocs,
      final int? limit,
      final int? totalPages,
      final int? page,
      final bool? hasNextPage}) = _$_LaunchesModel;

  factory _LaunchesModel.fromJson(Map<String, dynamic> json) =
      _$_LaunchesModel.fromJson;

  @override
  @JsonKey(name: 'docs')
  List<LaunchModel>? get launches;
  @override
  int? get totalDocs;
  @override
  int? get limit;
  @override
  int? get totalPages;
  @override
  int? get page;
  @override
  bool? get hasNextPage;
  @override
  @JsonKey(ignore: true)
  _$$_LaunchesModelCopyWith<_$_LaunchesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

LaunchModel _$LaunchModelFromJson(Map<String, dynamic> json) {
  return _LaunchModel.fromJson(json);
}

/// @nodoc
mixin _$LaunchModel {
  String? get rocket => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  DateTime? get dateUtc => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchModelCopyWith<LaunchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchModelCopyWith<$Res> {
  factory $LaunchModelCopyWith(
          LaunchModel value, $Res Function(LaunchModel) then) =
      _$LaunchModelCopyWithImpl<$Res, LaunchModel>;
  @useResult
  $Res call(
      {String? rocket,
      String? details,
      String? name,
      DateTime? dateUtc,
      String? id,
      bool? success});
}

/// @nodoc
class _$LaunchModelCopyWithImpl<$Res, $Val extends LaunchModel>
    implements $LaunchModelCopyWith<$Res> {
  _$LaunchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rocket = freezed,
    Object? details = freezed,
    Object? name = freezed,
    Object? dateUtc = freezed,
    Object? id = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      rocket: freezed == rocket
          ? _value.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dateUtc: freezed == dateUtc
          ? _value.dateUtc
          : dateUtc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LaunchModelCopyWith<$Res>
    implements $LaunchModelCopyWith<$Res> {
  factory _$$_LaunchModelCopyWith(
          _$_LaunchModel value, $Res Function(_$_LaunchModel) then) =
      __$$_LaunchModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? rocket,
      String? details,
      String? name,
      DateTime? dateUtc,
      String? id,
      bool? success});
}

/// @nodoc
class __$$_LaunchModelCopyWithImpl<$Res>
    extends _$LaunchModelCopyWithImpl<$Res, _$_LaunchModel>
    implements _$$_LaunchModelCopyWith<$Res> {
  __$$_LaunchModelCopyWithImpl(
      _$_LaunchModel _value, $Res Function(_$_LaunchModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rocket = freezed,
    Object? details = freezed,
    Object? name = freezed,
    Object? dateUtc = freezed,
    Object? id = freezed,
    Object? success = freezed,
  }) {
    return _then(_$_LaunchModel(
      rocket: freezed == rocket
          ? _value.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      dateUtc: freezed == dateUtc
          ? _value.dateUtc
          : dateUtc // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LaunchModel implements _LaunchModel {
  _$_LaunchModel(
      {this.rocket,
      this.details,
      this.name,
      this.dateUtc,
      this.id,
      this.success});

  factory _$_LaunchModel.fromJson(Map<String, dynamic> json) =>
      _$$_LaunchModelFromJson(json);

  @override
  final String? rocket;
  @override
  final String? details;
  @override
  final String? name;
  @override
  final DateTime? dateUtc;
  @override
  final String? id;
  @override
  final bool? success;

  @override
  String toString() {
    return 'LaunchModel(rocket: $rocket, details: $details, name: $name, dateUtc: $dateUtc, id: $id, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LaunchModel &&
            (identical(other.rocket, rocket) || other.rocket == rocket) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dateUtc, dateUtc) || other.dateUtc == dateUtc) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, rocket, details, name, dateUtc, id, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LaunchModelCopyWith<_$_LaunchModel> get copyWith =>
      __$$_LaunchModelCopyWithImpl<_$_LaunchModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LaunchModelToJson(
      this,
    );
  }
}

abstract class _LaunchModel implements LaunchModel {
  factory _LaunchModel(
      {final String? rocket,
      final String? details,
      final String? name,
      final DateTime? dateUtc,
      final String? id,
      final bool? success}) = _$_LaunchModel;

  factory _LaunchModel.fromJson(Map<String, dynamic> json) =
      _$_LaunchModel.fromJson;

  @override
  String? get rocket;
  @override
  String? get details;
  @override
  String? get name;
  @override
  DateTime? get dateUtc;
  @override
  String? get id;
  @override
  bool? get success;
  @override
  @JsonKey(ignore: true)
  _$$_LaunchModelCopyWith<_$_LaunchModel> get copyWith =>
      throw _privateConstructorUsedError;
}
