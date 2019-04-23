import 'package:json_annotation/json_annotation.dart';

part 'makeup.g.dart';
/// Makeup contains makeup information
@JsonSerializable()
class Makeup {
  /// Indicating whether eye has makeup or not
  final bool eyeMakeup;

  /// Indicating whether lip has makeup or not
  final bool lipMakeup;

  Makeup({
    this.eyeMakeup,
    this.lipMakeup,
  });

  /// A necessary factory constructor for creating a new Makeup instance
  /// from a map. Pass the map to the generated `_$MakeupFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory Makeup.fromJson(Map<String, dynamic> json) => _$MakeupFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$MakeupToJson(this);
}
