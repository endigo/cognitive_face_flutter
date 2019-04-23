enum BlurLevel {
  /// Low blur level indicating a clear face image
  Low,

  /// Medium blur level indicating a slightly blurry face image
  Medium,

  /// High blur level indicating a extremely blurry face image
  High
}

/// Blur class contains blur information
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
}
