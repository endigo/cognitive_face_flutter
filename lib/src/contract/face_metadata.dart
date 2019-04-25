import 'package:json_annotation/json_annotation.dart';

part 'face_metadata.g.dart';

@JsonSerializable()
class FaceMetadata {
  final String persistedFaceId;

  final String userData;

  FaceMetadata({
    this.persistedFaceId,
    this.userData,
  });

  /// A necessary factory constructor for creating a new FaceMetadata instance
  /// from a map. Pass the map to the generated `_$FaceMetadataFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory FaceMetadata.fromJson(Map<String, dynamic> json) =>
      _$FaceMetadataFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$FaceMetadataToJson(this);
}
