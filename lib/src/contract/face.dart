import 'package:cognitive_face_flutter/src/contract/face_attribute.dart';
import 'package:cognitive_face_flutter/src/contract/face_landmarks.dart';
import 'package:cognitive_face_flutter/src/contract/face_rectangle.dart';
import 'package:json_annotation/json_annotation.dart';

part 'face.g.dart';
@JsonSerializable()
class Face {
  final String faceId;

  final FaceRectangle faceRectangle;

  final FaceLandmarks faceLandmarks;

  final FaceAttribute faceAttributes;

  Face({
    this.faceId,
    this.faceRectangle,
    this.faceLandmarks,
    this.faceAttributes,
  });

  /// A necessary factory constructor for creating a new Face instance
  /// from a map. Pass the map to the generated `_$FaceFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory Face.fromJson(Map<String, dynamic> json) => _$FaceFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$FaceToJson(this);
}
