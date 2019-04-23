import 'package:json_annotation/json_annotation.dart';

part 'accessory.g.dart';
/// Accessory class contains accessory information
@JsonSerializable()
class Accessory {
  /// Indicating the accessory type
  final AccessoryType type;

  /// Indicating the confidence for accessory type
  final double confidence;

  Accessory({
    this.type,
    this.confidence,
  });

  /// A necessary factory constructor for creating a new Accessory instance
  /// from a map. Pass the map to the generated `_$AccessoryFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory Accessory.fromJson(Map<String, dynamic> json) => _$AccessoryFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$AccessoryToJson(this);
}

/// Accessory types
enum AccessoryType {
  headwear,
  glasses,
  mask,
}
