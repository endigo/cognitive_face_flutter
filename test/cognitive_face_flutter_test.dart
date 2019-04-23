import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';

import 'package:cognitive_face_flutter/cognitive_face_flutter.dart';

final exampleImageUrl1 = 'https://azurecomcdn.azureedge.net/cvt-6a2f7d293324f29822e8c792547f16ec907c521546303e63b435df0eef7b86f8/images/shared/cognitive-services-demos/face-detection/detection-1-thumbnail.jpg';
final exampleImageUrl2 = 'https://i.ibb.co/FxgjnS3/1502855-456439861172694-63875714172549783-o.jpg';

// 7 day trial key
final endpoint = "https://westcentralus.api.cognitive.microsoft.com/face/v1.0";
final key = "3080b54bd7c64a27801465608ca06a3e";

void main() {

  final client = FaceServiceClient(key, serviceHost: endpoint);
  test('Example image 1', () async {

    List<Face> faces = await client.detect(url: exampleImageUrl1, returnFaceAttributes: FaceAttributeType.values, returnFaceLandmarks: true);

    expect(faces.length, 1);
  });

  test('Example image 2', () async {

    List<Face> faces = await client.detect(url: exampleImageUrl2, returnFaceAttributes: FaceAttributeType.values, returnFaceLandmarks: true);

    expect(faces.length, 1);
  });
}