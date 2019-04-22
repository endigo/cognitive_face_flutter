import 'package:cognitive_face_flutter/src/contract/training_status.dart';

class LargePersonGroup {
  final String largePersonGroupId;

  final String name;

  final String userData;

  final TrainingStatus trainingStatus;

  LargePersonGroup({
    this.largePersonGroupId,
    this.name,
    this.userData,
    this.trainingStatus,
  });
}
