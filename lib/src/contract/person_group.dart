import 'package:cognitive_face_flutter/src/contract/training_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'person_group.g.dart';
@JsonSerializable()
class PersonGroup {
  final String personGroupId;

  final String name;

  final String userData;

  final TrainingStatus trainingStatus;

  PersonGroup({
    this.personGroupId,
    this.name,
    this.userData,
    this.trainingStatus,
  });

  /// A necessary factory constructor for creating a new PersonGroup instance
  /// from a map. Pass the map to the generated `_$PersonGroupFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory PersonGroup.fromJson(Map<String, dynamic> json) => _$PersonGroupFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$PersonGroupToJson(this);
}
