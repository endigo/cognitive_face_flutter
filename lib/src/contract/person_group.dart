import 'package:cognitive_face_flutter/src/contract/training_status.dart';

class PersonGroup {
  final String personGroupId;

  final String name;

  final String userData;

  final TrainingStatus trainingStatus;

  PersonGroup({
    this.personGroupId,
    this.name,
    this.userData,
    this.trainingStatus,
  });
}
