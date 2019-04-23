import 'package:json_annotation/json_annotation.dart';

part 'similar_face.g.dart';
@JsonSerializable()
class SimilarFace {
  final String faceId;

  final double confidence;

  SimilarFace({
    this.faceId,
    this.confidence,
  });

  /// A necessary factory constructor for creating a new SimilarFace instance
  /// from a map. Pass the map to the generated `_$SimilarFaceFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory SimilarFace.fromJson(Map<String, dynamic> json) => _$SimilarFaceFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$SimilarFaceToJson(this);
}
