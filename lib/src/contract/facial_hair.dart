import 'package:json_annotation/json_annotation.dart';

part 'facial_hair.g.dart';
@JsonSerializable()
class FacialHair {
  final double moustache;

  final double beard;

  final double sideburns;

  FacialHair({this.moustache, this.beard, this.sideburns});

  /// A necessary factory constructor for creating a new FacialHair instance
  /// from a map. Pass the map to the generated `_$FacialHairFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory FacialHair.fromJson(Map<String, dynamic> json) => _$FacialHairFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$FacialHairToJson(this);
}
