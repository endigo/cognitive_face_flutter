import 'package:json_annotation/json_annotation.dart';

part 'person_face.g.dart';

@JsonSerializable()
class PersonFace {
  final String persistedFaceId;

  final String userData;

  PersonFace({
    this.persistedFaceId,
    this.userData,
  });

  /// A necessary factory constructor for creating a new PersonFace instance
  /// from a map. Pass the map to the generated `_$PersonFaceFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory PersonFace.fromJson(Map<String, dynamic> json) =>
      _$PersonFaceFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$PersonFaceToJson(this);
}
