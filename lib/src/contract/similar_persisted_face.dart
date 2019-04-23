import 'package:json_annotation/json_annotation.dart';

part 'similar_persisted_face.g.dart';
@JsonSerializable()
class SimilarPersistedFace {
  /// The persisted face identifier
  final String persistedFaceId;

  /// The confidence value.
  final double confidence;

  SimilarPersistedFace({
    this.persistedFaceId,
    this.confidence,
  });

  /// A necessary factory constructor for creating a new SimilarPersistedFace instance
  /// from a map. Pass the map to the generated `_$SimilarPersistedFaceFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory SimilarPersistedFace.fromJson(Map<String, dynamic> json) => _$SimilarPersistedFaceFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$SimilarPersistedFaceToJson(this);
}
