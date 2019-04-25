import 'package:cognitive_face_flutter/cognitive_face_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hair_color.g.dart';

/// Hair color details
@JsonSerializable()
class HairColor {
  /// Indicating the hair color type
  final HairColorType color;

  /// Indicating the confidence for hair color type
  final double confidence;

  HairColor({this.color, this.confidence});

  /// A necessary factory constructor for creating a new HairColor instance
  /// from a map. Pass the map to the generated `_$HairColorFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory HairColor.fromJson(Map<String, dynamic> json) =>
      _$HairColorFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$HairColorToJson(this);
}
