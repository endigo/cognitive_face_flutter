import 'package:cognitive_face_flutter/src/contract/training_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'large_face_list.g.dart';

@JsonSerializable()
class LargeFaceList {
  final String largeFaceListId;
  final String name;
  final String userData;
  final TrainingStatus trainingStatus;

  LargeFaceList({
    this.largeFaceListId,
    this.name,
    this.userData,
    this.trainingStatus,
  });

  /// A necessary factory constructor for creating a new LargeFaceList instance
  /// from a map. Pass the map to the generated `_$LargeFaceListFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory LargeFaceList.fromJson(Map<String, dynamic> json) =>
      _$LargeFaceListFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$LargeFaceListToJson(this);
}
