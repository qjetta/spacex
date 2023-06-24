// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launches_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LaunchesQuery _$LaunchesQueryFromJson(Map<String, dynamic> json) {
  return _LaunchesQuery.fromJson(json);
}

/// @nodoc
mixin _$LaunchesQuery {
  @JsonKey(name: 'query')
  LaunchesQueryData? get queryData => throw _privateConstructorUsedError;
  @JsonKey(name: 'options')
  LaunchesQueryOptions? get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchesQueryCopyWith<LaunchesQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchesQueryCopyWith<$Res> {
  factory $LaunchesQueryCopyWith(
          LaunchesQuery value, $Res Function(LaunchesQuery) then) =
      _$LaunchesQueryCopyWithImpl<$Res, LaunchesQuery>;
  @useResult
  $Res call(
      {@JsonKey(name: 'query') LaunchesQueryData? queryData,
      @JsonKey(name: 'options') LaunchesQueryOptions? options});

  $LaunchesQueryDataCopyWith<$Res>? get queryData;
  $LaunchesQueryOptionsCopyWith<$Res>? get options;
}

/// @nodoc
class _$LaunchesQueryCopyWithImpl<$Res, $Val extends LaunchesQuery>
    implements $LaunchesQueryCopyWith<$Res> {
  _$LaunchesQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryData = freezed,
    Object? options = freezed,
  }) {
    return _then(_value.copyWith(
      queryData: freezed == queryData
          ? _value.queryData
          : queryData // ignore: cast_nullable_to_non_nullable
              as LaunchesQueryData?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as LaunchesQueryOptions?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LaunchesQueryDataCopyWith<$Res>? get queryData {
    if (_value.queryData == null) {
      return null;
    }

    return $LaunchesQueryDataCopyWith<$Res>(_value.queryData!, (value) {
      return _then(_value.copyWith(queryData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LaunchesQueryOptionsCopyWith<$Res>? get options {
    if (_value.options == null) {
      return null;
    }

    return $LaunchesQueryOptionsCopyWith<$Res>(_value.options!, (value) {
      return _then(_value.copyWith(options: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LaunchesQueryCopyWith<$Res>
    implements $LaunchesQueryCopyWith<$Res> {
  factory _$$_LaunchesQueryCopyWith(
          _$_LaunchesQuery value, $Res Function(_$_LaunchesQuery) then) =
      __$$_LaunchesQueryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'query') LaunchesQueryData? queryData,
      @JsonKey(name: 'options') LaunchesQueryOptions? options});

  @override
  $LaunchesQueryDataCopyWith<$Res>? get queryData;
  @override
  $LaunchesQueryOptionsCopyWith<$Res>? get options;
}

/// @nodoc
class __$$_LaunchesQueryCopyWithImpl<$Res>
    extends _$LaunchesQueryCopyWithImpl<$Res, _$_LaunchesQuery>
    implements _$$_LaunchesQueryCopyWith<$Res> {
  __$$_LaunchesQueryCopyWithImpl(
      _$_LaunchesQuery _value, $Res Function(_$_LaunchesQuery) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? queryData = freezed,
    Object? options = freezed,
  }) {
    return _then(_$_LaunchesQuery(
      queryData: freezed == queryData
          ? _value.queryData
          : queryData // ignore: cast_nullable_to_non_nullable
              as LaunchesQueryData?,
      options: freezed == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as LaunchesQueryOptions?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_LaunchesQuery implements _LaunchesQuery {
  _$_LaunchesQuery(
      {@JsonKey(name: 'query') this.queryData,
      @JsonKey(name: 'options') this.options});

  factory _$_LaunchesQuery.fromJson(Map<String, dynamic> json) =>
      _$$_LaunchesQueryFromJson(json);

  @override
  @JsonKey(name: 'query')
  final LaunchesQueryData? queryData;
  @override
  @JsonKey(name: 'options')
  final LaunchesQueryOptions? options;

  @override
  String toString() {
    return 'LaunchesQuery(queryData: $queryData, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LaunchesQuery &&
            (identical(other.queryData, queryData) ||
                other.queryData == queryData) &&
            (identical(other.options, options) || other.options == options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, queryData, options);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LaunchesQueryCopyWith<_$_LaunchesQuery> get copyWith =>
      __$$_LaunchesQueryCopyWithImpl<_$_LaunchesQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LaunchesQueryToJson(
      this,
    );
  }
}

abstract class _LaunchesQuery implements LaunchesQuery {
  factory _LaunchesQuery(
          {@JsonKey(name: 'query') final LaunchesQueryData? queryData,
          @JsonKey(name: 'options') final LaunchesQueryOptions? options}) =
      _$_LaunchesQuery;

  factory _LaunchesQuery.fromJson(Map<String, dynamic> json) =
      _$_LaunchesQuery.fromJson;

  @override
  @JsonKey(name: 'query')
  LaunchesQueryData? get queryData;
  @override
  @JsonKey(name: 'options')
  LaunchesQueryOptions? get options;
  @override
  @JsonKey(ignore: true)
  _$$_LaunchesQueryCopyWith<_$_LaunchesQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

LaunchesQueryData _$LaunchesQueryDataFromJson(Map<String, dynamic> json) {
  return _LauncherQueryData.fromJson(json);
}

/// @nodoc
mixin _$LaunchesQueryData {
  @JsonKey(name: 'date_utc')
  DateQuery? get dateQuery => throw _privateConstructorUsedError;
  String? get rocket => throw _privateConstructorUsedError;
  bool? get upcoming => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchesQueryDataCopyWith<LaunchesQueryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchesQueryDataCopyWith<$Res> {
  factory $LaunchesQueryDataCopyWith(
          LaunchesQueryData value, $Res Function(LaunchesQueryData) then) =
      _$LaunchesQueryDataCopyWithImpl<$Res, LaunchesQueryData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'date_utc') DateQuery? dateQuery,
      String? rocket,
      bool? upcoming});

  $DateQueryCopyWith<$Res>? get dateQuery;
}

/// @nodoc
class _$LaunchesQueryDataCopyWithImpl<$Res, $Val extends LaunchesQueryData>
    implements $LaunchesQueryDataCopyWith<$Res> {
  _$LaunchesQueryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateQuery = freezed,
    Object? rocket = freezed,
    Object? upcoming = freezed,
  }) {
    return _then(_value.copyWith(
      dateQuery: freezed == dateQuery
          ? _value.dateQuery
          : dateQuery // ignore: cast_nullable_to_non_nullable
              as DateQuery?,
      rocket: freezed == rocket
          ? _value.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as String?,
      upcoming: freezed == upcoming
          ? _value.upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DateQueryCopyWith<$Res>? get dateQuery {
    if (_value.dateQuery == null) {
      return null;
    }

    return $DateQueryCopyWith<$Res>(_value.dateQuery!, (value) {
      return _then(_value.copyWith(dateQuery: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LauncherQueryDataCopyWith<$Res>
    implements $LaunchesQueryDataCopyWith<$Res> {
  factory _$$_LauncherQueryDataCopyWith(_$_LauncherQueryData value,
          $Res Function(_$_LauncherQueryData) then) =
      __$$_LauncherQueryDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'date_utc') DateQuery? dateQuery,
      String? rocket,
      bool? upcoming});

  @override
  $DateQueryCopyWith<$Res>? get dateQuery;
}

/// @nodoc
class __$$_LauncherQueryDataCopyWithImpl<$Res>
    extends _$LaunchesQueryDataCopyWithImpl<$Res, _$_LauncherQueryData>
    implements _$$_LauncherQueryDataCopyWith<$Res> {
  __$$_LauncherQueryDataCopyWithImpl(
      _$_LauncherQueryData _value, $Res Function(_$_LauncherQueryData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateQuery = freezed,
    Object? rocket = freezed,
    Object? upcoming = freezed,
  }) {
    return _then(_$_LauncherQueryData(
      dateQuery: freezed == dateQuery
          ? _value.dateQuery
          : dateQuery // ignore: cast_nullable_to_non_nullable
              as DateQuery?,
      rocket: freezed == rocket
          ? _value.rocket
          : rocket // ignore: cast_nullable_to_non_nullable
              as String?,
      upcoming: freezed == upcoming
          ? _value.upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_LauncherQueryData implements _LauncherQueryData {
  const _$_LauncherQueryData(
      {@JsonKey(name: 'date_utc') this.dateQuery, this.rocket, this.upcoming});

  factory _$_LauncherQueryData.fromJson(Map<String, dynamic> json) =>
      _$$_LauncherQueryDataFromJson(json);

  @override
  @JsonKey(name: 'date_utc')
  final DateQuery? dateQuery;
  @override
  final String? rocket;
  @override
  final bool? upcoming;

  @override
  String toString() {
    return 'LaunchesQueryData(dateQuery: $dateQuery, rocket: $rocket, upcoming: $upcoming)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LauncherQueryData &&
            (identical(other.dateQuery, dateQuery) ||
                other.dateQuery == dateQuery) &&
            (identical(other.rocket, rocket) || other.rocket == rocket) &&
            (identical(other.upcoming, upcoming) ||
                other.upcoming == upcoming));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dateQuery, rocket, upcoming);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LauncherQueryDataCopyWith<_$_LauncherQueryData> get copyWith =>
      __$$_LauncherQueryDataCopyWithImpl<_$_LauncherQueryData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LauncherQueryDataToJson(
      this,
    );
  }
}

abstract class _LauncherQueryData implements LaunchesQueryData {
  const factory _LauncherQueryData(
      {@JsonKey(name: 'date_utc') final DateQuery? dateQuery,
      final String? rocket,
      final bool? upcoming}) = _$_LauncherQueryData;

  factory _LauncherQueryData.fromJson(Map<String, dynamic> json) =
      _$_LauncherQueryData.fromJson;

  @override
  @JsonKey(name: 'date_utc')
  DateQuery? get dateQuery;
  @override
  String? get rocket;
  @override
  bool? get upcoming;
  @override
  @JsonKey(ignore: true)
  _$$_LauncherQueryDataCopyWith<_$_LauncherQueryData> get copyWith =>
      throw _privateConstructorUsedError;
}

DateQuery _$DateQueryFromJson(Map<String, dynamic> json) {
  return _DateQuery.fromJson(json);
}

/// @nodoc
mixin _$DateQuery {
  @JsonKey(name: '\$gte')
  DateTime? get gte => throw _privateConstructorUsedError;
  @JsonKey(name: '\$lte')
  DateTime? get lte => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateQueryCopyWith<DateQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateQueryCopyWith<$Res> {
  factory $DateQueryCopyWith(DateQuery value, $Res Function(DateQuery) then) =
      _$DateQueryCopyWithImpl<$Res, DateQuery>;
  @useResult
  $Res call(
      {@JsonKey(name: '\$gte') DateTime? gte,
      @JsonKey(name: '\$lte') DateTime? lte});
}

/// @nodoc
class _$DateQueryCopyWithImpl<$Res, $Val extends DateQuery>
    implements $DateQueryCopyWith<$Res> {
  _$DateQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gte = freezed,
    Object? lte = freezed,
  }) {
    return _then(_value.copyWith(
      gte: freezed == gte
          ? _value.gte
          : gte // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lte: freezed == lte
          ? _value.lte
          : lte // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DateQueryCopyWith<$Res> implements $DateQueryCopyWith<$Res> {
  factory _$$_DateQueryCopyWith(
          _$_DateQuery value, $Res Function(_$_DateQuery) then) =
      __$$_DateQueryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '\$gte') DateTime? gte,
      @JsonKey(name: '\$lte') DateTime? lte});
}

/// @nodoc
class __$$_DateQueryCopyWithImpl<$Res>
    extends _$DateQueryCopyWithImpl<$Res, _$_DateQuery>
    implements _$$_DateQueryCopyWith<$Res> {
  __$$_DateQueryCopyWithImpl(
      _$_DateQuery _value, $Res Function(_$_DateQuery) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gte = freezed,
    Object? lte = freezed,
  }) {
    return _then(_$_DateQuery(
      gte: freezed == gte
          ? _value.gte
          : gte // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lte: freezed == lte
          ? _value.lte
          : lte // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_DateQuery implements _DateQuery {
  _$_DateQuery(
      {@JsonKey(name: '\$gte') this.gte, @JsonKey(name: '\$lte') this.lte});

  factory _$_DateQuery.fromJson(Map<String, dynamic> json) =>
      _$$_DateQueryFromJson(json);

  @override
  @JsonKey(name: '\$gte')
  final DateTime? gte;
  @override
  @JsonKey(name: '\$lte')
  final DateTime? lte;

  @override
  String toString() {
    return 'DateQuery(gte: $gte, lte: $lte)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateQuery &&
            (identical(other.gte, gte) || other.gte == gte) &&
            (identical(other.lte, lte) || other.lte == lte));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gte, lte);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateQueryCopyWith<_$_DateQuery> get copyWith =>
      __$$_DateQueryCopyWithImpl<_$_DateQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DateQueryToJson(
      this,
    );
  }
}

abstract class _DateQuery implements DateQuery {
  factory _DateQuery(
      {@JsonKey(name: '\$gte') final DateTime? gte,
      @JsonKey(name: '\$lte') final DateTime? lte}) = _$_DateQuery;

  factory _DateQuery.fromJson(Map<String, dynamic> json) =
      _$_DateQuery.fromJson;

  @override
  @JsonKey(name: '\$gte')
  DateTime? get gte;
  @override
  @JsonKey(name: '\$lte')
  DateTime? get lte;
  @override
  @JsonKey(ignore: true)
  _$$_DateQueryCopyWith<_$_DateQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

LaunchesQueryOptions _$LaunchesQueryOptionsFromJson(Map<String, dynamic> json) {
  return _LaunchesQueryOptions.fromJson(json);
}

/// @nodoc
mixin _$LaunchesQueryOptions {
  List<String>? get select => throw _privateConstructorUsedError;
  Map<String, SortDirection>? get sort => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchesQueryOptionsCopyWith<LaunchesQueryOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchesQueryOptionsCopyWith<$Res> {
  factory $LaunchesQueryOptionsCopyWith(LaunchesQueryOptions value,
          $Res Function(LaunchesQueryOptions) then) =
      _$LaunchesQueryOptionsCopyWithImpl<$Res, LaunchesQueryOptions>;
  @useResult
  $Res call(
      {List<String>? select,
      Map<String, SortDirection>? sort,
      int? limit,
      int? page});
}

/// @nodoc
class _$LaunchesQueryOptionsCopyWithImpl<$Res,
        $Val extends LaunchesQueryOptions>
    implements $LaunchesQueryOptionsCopyWith<$Res> {
  _$LaunchesQueryOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? select = freezed,
    Object? sort = freezed,
    Object? limit = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      select: freezed == select
          ? _value.select
          : select // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Map<String, SortDirection>?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LaunchesQueryOptionsCopyWith<$Res>
    implements $LaunchesQueryOptionsCopyWith<$Res> {
  factory _$$_LaunchesQueryOptionsCopyWith(_$_LaunchesQueryOptions value,
          $Res Function(_$_LaunchesQueryOptions) then) =
      __$$_LaunchesQueryOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? select,
      Map<String, SortDirection>? sort,
      int? limit,
      int? page});
}

/// @nodoc
class __$$_LaunchesQueryOptionsCopyWithImpl<$Res>
    extends _$LaunchesQueryOptionsCopyWithImpl<$Res, _$_LaunchesQueryOptions>
    implements _$$_LaunchesQueryOptionsCopyWith<$Res> {
  __$$_LaunchesQueryOptionsCopyWithImpl(_$_LaunchesQueryOptions _value,
      $Res Function(_$_LaunchesQueryOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? select = freezed,
    Object? sort = freezed,
    Object? limit = freezed,
    Object? page = freezed,
  }) {
    return _then(_$_LaunchesQueryOptions(
      select: freezed == select
          ? _value._select
          : select // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      sort: freezed == sort
          ? _value._sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Map<String, SortDirection>?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_LaunchesQueryOptions implements _LaunchesQueryOptions {
  _$_LaunchesQueryOptions(
      {final List<String>? select,
      final Map<String, SortDirection>? sort,
      this.limit,
      this.page})
      : _select = select,
        _sort = sort;

  factory _$_LaunchesQueryOptions.fromJson(Map<String, dynamic> json) =>
      _$$_LaunchesQueryOptionsFromJson(json);

  final List<String>? _select;
  @override
  List<String>? get select {
    final value = _select;
    if (value == null) return null;
    if (_select is EqualUnmodifiableListView) return _select;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, SortDirection>? _sort;
  @override
  Map<String, SortDirection>? get sort {
    final value = _sort;
    if (value == null) return null;
    if (_sort is EqualUnmodifiableMapView) return _sort;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int? limit;
  @override
  final int? page;

  @override
  String toString() {
    return 'LaunchesQueryOptions(select: $select, sort: $sort, limit: $limit, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LaunchesQueryOptions &&
            const DeepCollectionEquality().equals(other._select, _select) &&
            const DeepCollectionEquality().equals(other._sort, _sort) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_select),
      const DeepCollectionEquality().hash(_sort),
      limit,
      page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LaunchesQueryOptionsCopyWith<_$_LaunchesQueryOptions> get copyWith =>
      __$$_LaunchesQueryOptionsCopyWithImpl<_$_LaunchesQueryOptions>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LaunchesQueryOptionsToJson(
      this,
    );
  }
}

abstract class _LaunchesQueryOptions implements LaunchesQueryOptions {
  factory _LaunchesQueryOptions(
      {final List<String>? select,
      final Map<String, SortDirection>? sort,
      final int? limit,
      final int? page}) = _$_LaunchesQueryOptions;

  factory _LaunchesQueryOptions.fromJson(Map<String, dynamic> json) =
      _$_LaunchesQueryOptions.fromJson;

  @override
  List<String>? get select;
  @override
  Map<String, SortDirection>? get sort;
  @override
  int? get limit;
  @override
  int? get page;
  @override
  @JsonKey(ignore: true)
  _$$_LaunchesQueryOptionsCopyWith<_$_LaunchesQueryOptions> get copyWith =>
      throw _privateConstructorUsedError;
}
