import 'package:json_annotation/json_annotation.dart';

part 'face_list_metadata.g.dart';

@JsonSerializable()
class FaceListMetadata {
  final String faceListId;

  final String name;

  final String userData;

  FaceListMetadata({
    this.faceListId,
    this.name,
    this.userData,
  });

  /// A necessary factory constructor for creating a new FaceListMetadata instance
  /// from a map. Pass the map to the generated `_$FaceListMetadataFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory FaceListMetadata.fromJson(Map<String, dynamic> json) =>
      _$FaceListMetadataFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$FaceListMetadataToJson(this);
}
