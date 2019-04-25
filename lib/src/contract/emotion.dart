import 'package:json_annotation/json_annotation.dart';

part 'emotion.g.dart';

@JsonSerializable()
class Emotion {
  final double anger;
  final double contempt;
  final double disgust;
  final double fear;
  final double happiness;
  final double neutral;
  final double sadness;
  final double surprise;

  Emotion({
    this.anger,
    this.contempt,
    this.disgust,
    this.fear,
    this.happiness,
    this.neutral,
    this.sadness,
    this.surprise,
  });

  /// A necessary factory constructor for creating a new Emotion instance
  /// from a map. Pass the map to the generated `_$EmotionFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory Emotion.fromJson(Map<String, dynamic> json) =>
      _$EmotionFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$EmotionToJson(this);
}
