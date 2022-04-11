class HttpException implements Exception {
  final Error error;

  HttpException(this.error);
}

class Error {
  final String message;
  final int? code;

  Error({required this.message, this.code = -1});

  @override
  String toString() {
    return "ERROR: $message, CODE: $code";
  }
}
