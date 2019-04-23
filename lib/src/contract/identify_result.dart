import 'package:cognitive_face_flutter/src/contract/candidate.dart';
import 'package:json_annotation/json_annotation.dart';

part 'identify_result.g.dart';
@JsonSerializable()
class IdentifyResult {
  final String faceId;
  final List<Candidate> candidates;

  IdentifyResult({
    this.faceId,
    this.candidates = const [],
  });

  /// A necessary factory constructor for creating a new IdentifyResult instance
  /// from a map. Pass the map to the generated `_$IdentifyResultFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory IdentifyResult.fromJson(Map<String, dynamic> json) => _$IdentifyResultFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$IdentifyResultToJson(this);
}
