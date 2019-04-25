import 'package:cognitive_face_flutter/src/contract/feature_coordinate.dart';

import 'package:json_annotation/json_annotation.dart';

part 'face_landmarks.g.dart';

@JsonSerializable()
class FaceLandmarks {
  final FeatureCoordinate pupilLeft;

  final FeatureCoordinate pupilRight;

  final FeatureCoordinate noseTip;

  final FeatureCoordinate mouthLeft;

  final FeatureCoordinate mouthRight;

  final FeatureCoordinate eyebrowLeftOuter;

  final FeatureCoordinate eyebrowLeftInner;

  final FeatureCoordinate eyeLeftOuter;

  final FeatureCoordinate eyeLeftTop;

  final FeatureCoordinate eyeLeftBottom;

  final FeatureCoordinate eyeLeftInner;

  final FeatureCoordinate eyebrowRightInner;

  final FeatureCoordinate eyebrowRightOuter;

  final FeatureCoordinate eyeRightInner;

  final FeatureCoordinate eyeRightTop;

  final FeatureCoordinate eyeRightBottom;

  final FeatureCoordinate eyeRightOuter;

  final FeatureCoordinate noseRootLeft;

  final FeatureCoordinate noseRootRight;

  final FeatureCoordinate noseLeftAlarTop;

  final FeatureCoordinate noseRightAlarTop;

  final FeatureCoordinate noseLeftAlarOutTip;

  final FeatureCoordinate noseRightAlarOutTip;

  final FeatureCoordinate upperLipTop;

  final FeatureCoordinate upperLipBottom;

  final FeatureCoordinate underLipTop;

  final FeatureCoordinate underLipBottom;

  FaceLandmarks(
    this.pupilLeft,
    this.pupilRight,
    this.noseTip,
    this.mouthLeft,
    this.mouthRight,
    this.eyebrowLeftOuter,
    this.eyebrowLeftInner,
    this.eyeLeftOuter,
    this.eyeLeftTop,
    this.eyeLeftBottom,
    this.eyeLeftInner,
    this.eyebrowRightInner,
    this.eyebrowRightOuter,
    this.eyeRightInner,
    this.eyeRightTop,
    this.eyeRightBottom,
    this.eyeRightOuter,
    this.noseRootLeft,
    this.noseRootRight,
    this.noseLeftAlarTop,
    this.noseRightAlarTop,
    this.noseLeftAlarOutTip,
    this.noseRightAlarOutTip,
    this.upperLipTop,
    this.upperLipBottom,
    this.underLipTop,
    this.underLipBottom,
  );

  /// A necessary factory constructor for creating a new FaceLandmarks instance
  /// from a map. Pass the map to the generated `_$FaceLandmarksFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory FaceLandmarks.fromJson(Map<String, dynamic> json) =>
      _$FaceLandmarksFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$FaceLandmarksToJson(this);
}
