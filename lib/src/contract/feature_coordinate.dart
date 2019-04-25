import 'package:json_annotation/json_annotation.dart';

part 'feature_coordinate.g.dart';

@JsonSerializable()
class FeatureCoordinate {
  final double x;

  final double y;

  FeatureCoordinate({
    this.x,
    this.y,
  });

  /// A necessary factory constructor for creating a new FeatureCoordinate instance
  /// from a map. Pass the map to the generated `_$FeatureCoordinateFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory FeatureCoordinate.fromJson(Map<String, dynamic> json) =>
      _$FeatureCoordinateFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$FeatureCoordinateToJson(this);
}
