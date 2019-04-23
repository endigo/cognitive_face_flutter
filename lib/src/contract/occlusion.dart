import 'package:json_annotation/json_annotation.dart';

part 'occlusion.g.dart';
/// Occlusion class contains occlusion information
@JsonSerializable()
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

  /// A necessary factory constructor for creating a new Occlusion instance
  /// from a map. Pass the map to the generated `_$OcclusionFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory Occlusion.fromJson(Map<String, dynamic> json) => _$OcclusionFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$OcclusionToJson(this);
}
