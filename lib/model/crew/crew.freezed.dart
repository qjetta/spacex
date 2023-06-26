// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crew.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Crew _$CrewFromJson(Map<String, dynamic> json) {
  return _Crew.fromJson(json);
}

/// @nodoc
mixin _$Crew {
  List<Person> get crew => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CrewCopyWith<Crew> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrewCopyWith<$Res> {
  factory $CrewCopyWith(Crew value, $Res Function(Crew) then) =
      _$CrewCopyWithImpl<$Res, Crew>;
  @useResult
  $Res call({List<Person> crew});
}

/// @nodoc
class _$CrewCopyWithImpl<$Res, $Val extends Crew>
    implements $CrewCopyWith<$Res> {
  _$CrewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crew = null,
  }) {
    return _then(_value.copyWith(
      crew: null == crew
          ? _value.crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<Person>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CrewCopyWith<$Res> implements $CrewCopyWith<$Res> {
  factory _$$_CrewCopyWith(_$_Crew value, $Res Function(_$_Crew) then) =
      __$$_CrewCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Person> crew});
}

/// @nodoc
class __$$_CrewCopyWithImpl<$Res> extends _$CrewCopyWithImpl<$Res, _$_Crew>
    implements _$$_CrewCopyWith<$Res> {
  __$$_CrewCopyWithImpl(_$_Crew _value, $Res Function(_$_Crew) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? crew = null,
  }) {
    return _then(_$_Crew(
      crew: null == crew
          ? _value._crew
          : crew // ignore: cast_nullable_to_non_nullable
              as List<Person>,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$_Crew implements _Crew {
  _$_Crew({required final List<Person> crew}) : _crew = crew;

  factory _$_Crew.fromJson(Map<String, dynamic> json) => _$$_CrewFromJson(json);

  final List<Person> _crew;
  @override
  List<Person> get crew {
    if (_crew is EqualUnmodifiableListView) return _crew;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_crew);
  }

  @override
  String toString() {
    return 'Crew(crew: $crew)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Crew &&
            const DeepCollectionEquality().equals(other._crew, _crew));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_crew));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CrewCopyWith<_$_Crew> get copyWith =>
      __$$_CrewCopyWithImpl<_$_Crew>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CrewToJson(
      this,
    );
  }
}

abstract class _Crew implements Crew {
  factory _Crew({required final List<Person> crew}) = _$_Crew;

  factory _Crew.fromJson(Map<String, dynamic> json) = _$_Crew.fromJson;

  @override
  List<Person> get crew;
  @override
  @JsonKey(ignore: true)
  _$$_CrewCopyWith<_$_Crew> get copyWith => throw _privateConstructorUsedError;
}

Person _$PersonFromJson(Map<String, dynamic> json) {
  return _Person.fromJson(json);
}

/// @nodoc
mixin _$Person {
  String get name => throw _privateConstructorUsedError;
  String get agency => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get wikipedia => throw _privateConstructorUsedError;
  List<String> get launches => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonCopyWith<Person> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) =
      _$PersonCopyWithImpl<$Res, Person>;
  @useResult
  $Res call(
      {String name,
      String agency,
      String image,
      String wikipedia,
      List<String> launches,
      String status,
      String id});
}

/// @nodoc
class _$PersonCopyWithImpl<$Res, $Val extends Person>
    implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? agency = null,
    Object? image = null,
    Object? wikipedia = null,
    Object? launches = null,
    Object? status = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      agency: null == agency
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      wikipedia: null == wikipedia
          ? _value.wikipedia
          : wikipedia // ignore: cast_nullable_to_non_nullable
              as String,
      launches: null == launches
          ? _value.launches
          : launches // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PersonCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$$_PersonCopyWith(_$_Person value, $Res Function(_$_Person) then) =
      __$$_PersonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String agency,
      String image,
      String wikipedia,
      List<String> launches,
      String status,
      String id});
}

/// @nodoc
class __$$_PersonCopyWithImpl<$Res>
    extends _$PersonCopyWithImpl<$Res, _$_Person>
    implements _$$_PersonCopyWith<$Res> {
  __$$_PersonCopyWithImpl(_$_Person _value, $Res Function(_$_Person) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? agency = null,
    Object? image = null,
    Object? wikipedia = null,
    Object? launches = null,
    Object? status = null,
    Object? id = null,
  }) {
    return _then(_$_Person(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      agency: null == agency
          ? _value.agency
          : agency // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      wikipedia: null == wikipedia
          ? _value.wikipedia
          : wikipedia // ignore: cast_nullable_to_non_nullable
              as String,
      launches: null == launches
          ? _value._launches
          : launches // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$_Person implements _Person {
  _$_Person(
      {required this.name,
      required this.agency,
      required this.image,
      required this.wikipedia,
      required final List<String> launches,
      required this.status,
      required this.id})
      : _launches = launches;

  factory _$_Person.fromJson(Map<String, dynamic> json) =>
      _$$_PersonFromJson(json);

  @override
  final String name;
  @override
  final String agency;
  @override
  final String image;
  @override
  final String wikipedia;
  final List<String> _launches;
  @override
  List<String> get launches {
    if (_launches is EqualUnmodifiableListView) return _launches;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_launches);
  }

  @override
  final String status;
  @override
  final String id;

  @override
  String toString() {
    return 'Person(name: $name, agency: $agency, image: $image, wikipedia: $wikipedia, launches: $launches, status: $status, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Person &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.agency, agency) || other.agency == agency) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.wikipedia, wikipedia) ||
                other.wikipedia == wikipedia) &&
            const DeepCollectionEquality().equals(other._launches, _launches) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, agency, image, wikipedia,
      const DeepCollectionEquality().hash(_launches), status, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PersonCopyWith<_$_Person> get copyWith =>
      __$$_PersonCopyWithImpl<_$_Person>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonToJson(
      this,
    );
  }
}

abstract class _Person implements Person {
  factory _Person(
      {required final String name,
      required final String agency,
      required final String image,
      required final String wikipedia,
      required final List<String> launches,
      required final String status,
      required final String id}) = _$_Person;

  factory _Person.fromJson(Map<String, dynamic> json) = _$_Person.fromJson;

  @override
  String get name;
  @override
  String get agency;
  @override
  String get image;
  @override
  String get wikipedia;
  @override
  List<String> get launches;
  @override
  String get status;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_PersonCopyWith<_$_Person> get copyWith =>
      throw _privateConstructorUsedError;
}
