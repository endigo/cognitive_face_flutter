import 'package:cognitive_face_flutter/src/contract/training_status.dart';

class LargeFaceList {
  final String largeFaceListId;
  final String name;
  final String userData;
  final TrainingStatus trainingStatus;

  LargeFaceList({
    this.largeFaceListId,
    this.name,
    this.userData,
    this.trainingStatus,
  });
}
