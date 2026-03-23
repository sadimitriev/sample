enum AuthExceptionType {
  tokenKeyRequestFailed,
  tokenKeyEmpty,
  invalidUserId,
  noLabsAvailable,
}

class AuthException implements Exception {
  final AuthExceptionType exceptionType;
  final String? apiResponse;

  AuthException({required this.exceptionType, this.apiResponse});
}
