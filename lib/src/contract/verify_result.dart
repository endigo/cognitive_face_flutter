import 'package:json_annotation/json_annotation.dart';

part 'verify_result.g.dart';

@JsonSerializable()
class VerifyResult {
  final bool isIdentical;

  final double confidence;

  VerifyResult({
    this.isIdentical,
    this.confidence,
  });

  /// A necessary factory constructor for creating a new VerifyResult instance
  /// from a map. Pass the map to the generated `_$VerifyResultFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory VerifyResult.fromJson(Map<String, dynamic> json) => _$VerifyResultFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$VerifyResultToJson(this);
}
