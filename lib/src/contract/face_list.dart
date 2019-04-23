import 'package:cognitive_face_flutter/src/contract/face_list_metadata.dart';
import 'package:cognitive_face_flutter/src/contract/face_metadata.dart';
import 'package:json_annotation/json_annotation.dart';

part 'face_list.g.dart';
@JsonSerializable()
class FaceList extends FaceListMetadata {
  final List<FaceMetadata> persistedFaces;

  FaceList({this.persistedFaces});

  /// A necessary factory constructor for creating a new FaceList instance
  /// from a map. Pass the map to the generated `_$FaceListFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory FaceList.fromJson(Map<String, dynamic> json) => _$FaceListFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$FaceListToJson(this);
}
