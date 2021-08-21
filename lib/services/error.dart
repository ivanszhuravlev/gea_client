class AuthError extends Error {
  final int code;

  AuthError({required this.code}) : super();


  static const unauthorised = 7;
}
