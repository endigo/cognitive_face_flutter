import 'package:json_annotation/json_annotation.dart';

part 'candidate.g.dart';

@JsonSerializable()
class Candidate {
  final String personId;

  final double confidence;

  Candidate({
    this.personId,
    this.confidence,
  });

  /// A necessary factory constructor for creating a new Candidate instance
  /// from a map. Pass the map to the generated `_$CandidateFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory Candidate.fromJson(Map<String, dynamic> json) =>
      _$CandidateFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$CandidateToJson(this);
}
