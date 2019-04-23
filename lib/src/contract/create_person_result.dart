import 'package:json_annotation/json_annotation.dart';

part 'create_person_result.g.dart';
@JsonSerializable()
class CreatePersonResult {
    final String personId;

  CreatePersonResult(this.personId);

  /// A necessary factory constructor for creating a new CreatePersonResult instance
  /// from a map. Pass the map to the generated `_$CreatePersonResultFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory CreatePersonResult.fromJson(Map<String, dynamic> json) => _$CreatePersonResultFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$CreatePersonResultToJson(this);
}
