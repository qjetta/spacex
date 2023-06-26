import 'package:freezed_annotation/freezed_annotation.dart';

part 'crew.freezed.dart';
part 'crew.g.dart';

@freezed
abstract class Crew with _$Crew {
  @JsonSerializable(includeIfNull: false)
  factory Crew({
    required List<Person> crew,
  }) = _Crew;

  factory Crew.fromJson(Map<String, dynamic> json) => _$CrewFromJson(json);
}

@freezed
abstract class Person with _$Person {
  @JsonSerializable(explicitToJson: true, includeIfNull: false)
  factory Person({
    required String name,
    required String agency,
    required String image,
    required String wikipedia,
    required List<String> launches,
    required String status,
    required String id,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
