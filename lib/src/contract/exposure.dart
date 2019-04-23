import 'package:json_annotation/json_annotation.dart';

part 'exposure.g.dart';

/// Exposure class contains exposure information
@JsonSerializable()
class Exposure {
  /// Indicating exposure level of face image
  final ExposureLevel exposureLevel;
  /// Exposure value is in range [0, 1]. Larger value means the face image is more brighter.
  /// [0, 0.25) is under exposure.
  /// [0.25, 0.75) is good exposure.
  /// [0.75, 1] is over exposure.
  final double value;

  Exposure({
    this.exposureLevel,
    this.value,
  });

  /// A necessary factory constructor for creating a new Exposure instance
  /// from a map. Pass the map to the generated `_$ExposureFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory Exposure.fromJson(Map<String, dynamic> json) => _$ExposureFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$ExposureToJson(this);
}

// Definition of exposure level
enum ExposureLevel {
  /// Indicating face image is in under exposure
  underExposure,

  /// Indicating face image is in good exposure
  goodExposure,

  /// Indicating face image is in over exposure
  overExposure
}