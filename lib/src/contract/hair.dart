import 'package:cognitive_face_flutter/src/contract/hair_color.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hair.g.dart';

/// Hair class contains hair color information
@JsonSerializable()
class Hair {
  /// Indicating the confidence of a bald head
  final double bald;

  /// Indicating whether hair is occluded or not
  final bool invisible;
  /// Indicating all possible hair colors with confidences
  final List<HairColor> hairColor;

  Hair({this.bald, this.invisible, this.hairColor});

  /// A necessary factory constructor for creating a new Hair instance
  /// from a map. Pass the map to the generated `_$HairFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory Hair.fromJson(Map<String, dynamic> json) => _$HairFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$HairToJson(this);
}


/// Hair color type
enum HairColorType {
  unknown,
  white,
  gray,
  blond,
  brown,
  red,
  black,
  other,
}