import 'package:cognitive_face_flutter/src/contract/candidate.dart';

class IdentifyResult {
  final String faceId;
  final List<Candidate> candidates;

  IdentifyResult({
    this.faceId,
    this.candidates = const [],
  });
}
