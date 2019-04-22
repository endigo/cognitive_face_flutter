/// Accessory types
enum AccessoryType {
  headwear,
  glasses,
  mask,
}

/// Accessory class contains accessory information
class Accessory {
  /// Indicating the accessory type
  final AccessoryType type;

  /// Indicating the confidence for accessory type
  final double confidence;

  Accessory({
    this.type,
    this.confidence,
  });
}
