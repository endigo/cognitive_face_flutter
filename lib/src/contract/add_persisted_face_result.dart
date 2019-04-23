import 'package:json_annotation/json_annotation.dart';
part 'add_persisted_face_result.g.dart';

@JsonSerializable()
class AddPersistedFaceResult {
  /// The persisted face identifier
  final String persistedFaceId;

  AddPersistedFaceResult(this.persistedFaceId);

  /// A necessary factory constructor for creating a new AddPersistedFaceResult instance
  /// from a map. Pass the map to the generated `_$AddPersistedFaceResultFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory AddPersistedFaceResult.fromJson(Map<String, dynamic> json) =>
      _$AddPersistedFaceResultFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$AddPersistedFaceResultToJson(this);
}
