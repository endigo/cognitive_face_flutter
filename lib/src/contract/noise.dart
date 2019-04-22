// Definition of noise level
enum NoiseLevel {
  // Low noise level indicating a clear face image
  Low,
  // Medium noise level indicating a slightly noisy face image
  Medium,
  // High noise level indicating a extremely noisy face image
  High
}

// Noise class contains noise information
class Noise {
  // Indicating noise level of face image
  final NoiseLevel noiseLevel;

  // Noise value is in range [0, 1]. Larger value means the face image is more noisy.
  // [0, 0.3) is low noise level.
  // [0.3, 0.7) is medium noise level.
  // [0.7, 1] is high noise level.
  final double value;

  Noise({
    this.noiseLevel,
    this.value,
  });
}
