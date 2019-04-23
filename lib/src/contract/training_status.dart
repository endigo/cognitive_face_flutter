enum Status {
  /// Training is succeeded.
  Succeeded,

  /// Training is failed.
  Failed,

  /// Training is in progress.
  Running
}

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
}
