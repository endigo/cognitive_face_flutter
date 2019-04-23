import 'package:json_annotation/json_annotation.dart';

part 'face_rectangle.g.dart';
@JsonSerializable()
class FaceRectangle {
  final int width;

  final int height;

  final int left;

  final int top;

  FaceRectangle({
    this.width,
    this.height,
    this.left,
    this.top,
  });

  /// A necessary factory constructor for creating a new FaceRectangle instance
  /// from a map. Pass the map to the generated `_$FaceRectangleFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory FaceRectangle.fromJson(Map<String, dynamic> json) => _$FaceRectangleFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$FaceRectangleToJson(this);
}
