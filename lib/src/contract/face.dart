import 'package:cognitive_face_flutter/src/contract/face_attribute.dart';
import 'package:cognitive_face_flutter/src/contract/face_landmarks.dart';
import 'package:cognitive_face_flutter/src/contract/face_rectangle.dart';

class Face {
  final String faceId;

  final FaceRectangle faceRectangle;

  final FaceLandmarks faceLandmarks;

  final FaceAttribute faceAttributes;

  Face({
    this.faceId,
    this.faceRectangle,
    this.faceLandmarks,
    this.faceAttributes,
  });
}
