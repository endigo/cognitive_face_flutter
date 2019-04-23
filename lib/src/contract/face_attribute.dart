import 'package:cognitive_face_flutter/src/contract/accessory.dart';
import 'package:cognitive_face_flutter/src/contract/blur.dart';
import 'package:cognitive_face_flutter/src/contract/emotion.dart';
import 'package:cognitive_face_flutter/src/contract/exposure.dart';
import 'package:cognitive_face_flutter/src/contract/facial_hair.dart';
import 'package:cognitive_face_flutter/src/contract/glasses.dart';
import 'package:cognitive_face_flutter/src/contract/hair.dart';
import 'package:cognitive_face_flutter/src/contract/head_pose.dart';
import 'package:cognitive_face_flutter/src/contract/makeup.dart';
import 'package:cognitive_face_flutter/src/contract/noise.dart';
import 'package:cognitive_face_flutter/src/contract/occlusion.dart';
import 'package:json_annotation/json_annotation.dart';

part 'face_attribute.g.dart';
@JsonSerializable()
class FaceAttribute {
  final double age;

  final String gender;

  final double smile;

  final FacialHair facialHair;

  final HeadPose headPose;

  final Glasses glasses;

  final Emotion emotion;

  final Blur blur;

  final Exposure exposure;

  final Noise noise;

  final Makeup makeup;

  final List<Accessory> accessories;

  final Occlusion occlusion;

  final Hair hair;

  FaceAttribute({
    this.age,
    this.gender,
    this.smile,
    this.facialHair,
    this.headPose,
    this.glasses,
    this.emotion,
    this.blur,
    this.exposure,
    this.noise,
    this.makeup,
    this.accessories,
    this.occlusion,
    this.hair,
  });

  /// A necessary factory constructor for creating a new FaceAttribute instance
  /// from a map. Pass the map to the generated `_$FaceAttributeFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory FaceAttribute.fromJson(Map<String, dynamic> json) => _$FaceAttributeFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$FaceAttributeToJson(this);
}
