import 'package:json_annotation/json_annotation.dart';

part 'blur.g.dart';

/// Blur class contains blur information
@JsonSerializable()
class Blur {
  /// Definition of blur level

  /// Indicating the blur level of face image
  final BlurLevel blurLevel;

  ///
  ///  Blur value is in range [0, 1]. Larger value means the face image is more blurry.
  ///  [0, 0.25) is low blur level.
  ///  [0.25, 0.75) is medium blur level.
  ///  [0.75, 1] is high blur level.
  ///
  final double value;

  Blur({
    this.blurLevel,
    this.value,
  });

  /// A necessary factory constructor for creating a new Blur instance
  /// from a map. Pass the map to the generated `_$BlurFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory Blur.fromJson(Map<String, dynamic> json) => _$BlurFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$BlurToJson(this);
}

enum BlurLevel {
  /// Low blur level indicating a clear face image
  low,

  /// Medium blur level indicating a slightly blurry face image
  medium,

  /// High blur level indicating a extremely blurry face image
  high
}
