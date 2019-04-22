// Definition of exposure level
enum ExposureLevel {
  /// Indicating face image is in under exposure
  UnderExposure,

  /// Indicating face image is in good exposure
  GoodExposure,

  /// Indicating face image is in over exposure
  OverExposure
}

// Exposure class contains exposure information
class Exposure {
  // Indicating exposure level of face image
  final ExposureLevel exposureLevel;
  // Exposure value is in range [0, 1]. Larger value means the face image is more brighter.
  // [0, 0.25) is under exposure.
  // [0.25, 0.75) is good exposure.
  // [0.75, 1] is over exposure.
  final double value;

  Exposure({
    this.exposureLevel,
    this.value,
  });
}
