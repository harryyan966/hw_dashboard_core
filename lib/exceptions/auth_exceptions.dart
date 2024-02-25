import 'package:hw_dashboard_core/exceptions/app_exception.dart';

class AuthException extends AppException {
  AuthException._(super.message);

  factory AuthException.invalidCredentials() => AuthException._('Invalid Credentials');
  factory AuthException.notLoggedIn() => AuthException._('Not Logged In');

  @override
  String toString() {
    return 'Auth Exception: $message';
  }
}
