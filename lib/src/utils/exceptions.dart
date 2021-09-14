class ApiException implements Exception {
  ApiException({String? code, required String message});
}

class AuthenticationException implements Exception {
  AuthenticationException({String? code, required String message});
}
