class ClientError {
  final String code;

  final String message;

  final String requestId;

  ClientError({
    this.code,
    this.message,
    this.requestId,
  });
}
