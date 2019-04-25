import 'package:json_annotation/json_annotation.dart';

part 'noise.g.dart';

/// Noise class contains noise information
@JsonSerializable()
class Noise {
  /// Indicating noise level of face image
  final NoiseLevel noiseLevel;

  /// Noise value is in range [0, 1]. Larger value means the face image is more noisy.
  /// [0, 0.3) is low noise level.
  /// [0.3, 0.7) is medium noise level.
  /// [0.7, 1] is high noise level.
  final double value;

  Noise({
    this.noiseLevel,
    this.value,
  });

  /// A necessary factory constructor for creating a new Noise instance
  /// from a map. Pass the map to the generated `_$NoiseFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory Noise.fromJson(Map<String, dynamic> json) => _$NoiseFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$NoiseToJson(this);
}

/// Definition of noise level
enum NoiseLevel {
  /// Low noise level indicating a clear face image
  low,

  /// Medium noise level indicating a slightly noisy face image
  medium,

  /// High noise level indicating a extremely noisy face image
  high
}
