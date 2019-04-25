import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';

import 'package:cognitive_face_flutter/cognitive_face_flutter.dart';


String face1 = 'https://i.ibb.co/FY26Ktr/1.jpg';
String face2 = 'https://i.ibb.co/bdth2X1/4.jpg';
String face3 = 'https://i.ibb.co/2Z1q6p0/2.jpg';
String multipleFaces = 'https://i.ibb.co/Np9PdLr/5.jpg';

// 7 day trial key
final endpoint = "https://westcentralus.api.cognitive.microsoft.com/face/v1.0";
final key = "3080b54bd7c64a27801465608ca06a3e";

void main() {
  final client = FaceServiceClient(key, serviceHost: endpoint);
  test('Detect Face 1', () async {
    List<Face> faces = await client.detect(
        url: face1,
        returnFaceAttributes: FaceAttributeType.values,
        returnFaceLandmarks: true);

    expect(faces.length, 1);
  });

  test('Detect Face 2', () async {
    List<Face> faces = await client.detect(
        url: face2,
        returnFaceAttributes: FaceAttributeType.values,
        returnFaceLandmarks: true);

    expect(faces.length, 1);
  });

  test('Detect Multiple  Face', () async {
    List<Face> faces = await client.detect(
        url: multipleFaces,
        returnFaceAttributes: FaceAttributeType.values,
        returnFaceLandmarks: true);

    expect(faces.length, 3);
  });

  test('Verify Face: Identical face', () async {
    List<Face> faces1 = await client.detect(
        url: face1,
        returnFaceAttributes: FaceAttributeType.values,
        returnFaceLandmarks: true);
    List<Face> faces2 = await client.detect(
        url: face2,
        returnFaceAttributes: FaceAttributeType.values,
        returnFaceLandmarks: true);

    expect(faces1.length, 1);
    expect(faces2.length, 1);

    VerifyResult result  = await client.verify(faces1.first.faceId, faceId2: faces2.first.faceId);

    expect(result.isIdentical, true);
    expect(result.confidence, greaterThan(.7));
  });

  test('Verify Face: Not Identical face', () async {
    List<Face> faces1 = await client.detect(
        url: face1,
        returnFaceAttributes: FaceAttributeType.values,
        returnFaceLandmarks: true);
    List<Face> faces2 = await client.detect(
        url: face3,
        returnFaceAttributes: FaceAttributeType.values,
        returnFaceLandmarks: true);

    expect(faces1.length, 1);
    expect(faces2.length, 1);

    VerifyResult result  = await client.verify(faces1.first.faceId, faceId2: faces2.first.faceId);

    expect(result.isIdentical, false);
    expect(result.confidence, lessThanOrEqualTo(.5));
  });
}
