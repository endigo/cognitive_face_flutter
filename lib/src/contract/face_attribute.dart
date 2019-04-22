import 'package:cognitive_face_flutter/src/contract/accessory.dart';
import 'package:cognitive_face_flutter/src/contract/blur.dart';
import 'package:cognitive_face_flutter/src/contract/emotion.dart';
import 'package:cognitive_face_flutter/src/contract/exposure.dart';
import 'package:cognitive_face_flutter/src/contract/facial_hair.dart';
import 'package:cognitive_face_flutter/src/contract/glasses.dart';
import 'package:cognitive_face_flutter/src/contract/hair.dart';
import 'package:cognitive_face_flutter/src/contract/head_pose.dart';
import 'package:cognitive_face_flutter/src/contract/make_up.dart';
import 'package:cognitive_face_flutter/src/contract/noise.dart';
import 'package:cognitive_face_flutter/src/contract/occlusion.dart';

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
}
