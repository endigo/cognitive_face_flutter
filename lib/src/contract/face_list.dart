import 'package:cognitive_face_flutter/src/contract/face_list_metadata.dart';
import 'package:cognitive_face_flutter/src/contract/face_metadata.dart';

class FaceList extends FaceListMetadata {
  final List<FaceMetadata> persistedFaces;

  FaceList({this.persistedFaces});
}
