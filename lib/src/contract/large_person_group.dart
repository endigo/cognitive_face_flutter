import 'package:cognitive_face_flutter/src/contract/training_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'large_person_group.g.dart';

@JsonSerializable()
class LargePersonGroup {
  final String largePersonGroupId;

  final String name;

  final String userData;

  final TrainingStatus trainingStatus;

  LargePersonGroup({
    this.largePersonGroupId,
    this.name,
    this.userData,
    this.trainingStatus,
  });

  /// A necessary factory constructor for creating a new LargePersonGroup instance
  /// from a map. Pass the map to the generated `_$LargePersonGroupFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory LargePersonGroup.fromJson(Map<String, dynamic> json) =>
      _$LargePersonGroupFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$LargePersonGroupToJson(this);
}
