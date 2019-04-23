/// Occlusion class contains occlusion information
class Occlusion {
  /// Indicating whether forehead is occluded or not
  final bool foreheadOccluded;

  /// Indicating whether eye is occluded or not
  final bool eyeOccluded;

  /// Indicating whether mouth is occluded or not
  final bool mouthOccluded;

  Occlusion({
    this.foreheadOccluded,
    this.eyeOccluded,
    this.mouthOccluded,
  });
}
