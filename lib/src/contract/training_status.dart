import 'package:json_annotation/json_annotation.dart';

part 'training_status.g.dart';

@JsonSerializable()
class TrainingStatus {
  /// Training status.
  final Status status;

  /// Creation date time.
  final DateTime createdDateTime;

  /// Last action date time.
  final DateTime lastActionDateTime;

  /// Message. Only when failed
  final String message;

  TrainingStatus({
    this.status,
    this.createdDateTime,
    this.lastActionDateTime,
    this.message,
  });

  /// A necessary factory constructor for creating a new TrainingStatus instance
  /// from a map. Pass the map to the generated `_$TrainingStatusFromJson()` constructor.
  /// The constructor is named after the source class, in this case User.
  factory TrainingStatus.fromJson(Map<String, dynamic> json) => _$TrainingStatusFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TrainingStatusToJson(this);
}

enum Status {
  /// Training is succeeded.
  succeeded,

  /// Training is failed.
  failed,

  /// Training is in progress.
  running
}
