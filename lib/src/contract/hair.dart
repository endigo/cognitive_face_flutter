/// Hair color type
enum HairColorType {
  Unknown,
  White,
  Gray,
  Blond,
  Brown,
  Red,
  Black,
  Other,
}

/// Hair class contains hair color information
class Hair {
  /// Indicating the confidence of a bald head
  final double bald;

  /// Indicating whether hair is occluded or not
  final bool invisible;
  /// Indicating all possible hair colors with confidences
  final List<HairColor> hairColor;

  Hair({this.bald, this.invisible, this.hairColor});
}

/// Hair color details
class HairColor {
  /// Indicating the hair color type
  final HairColorType color;
  /// Indicating the confidence for hair color type
  final double confidence;

  HairColor({this.color, this.confidence});
}
