import 'package:hw_dashboard_core/exceptions/app_exception.dart';

class UsersException  extends AppException {
  UsersException._(super.message);

  factory UsersException.cannotCreate() => UsersException._('Cannot create user: only admins can create users.');
  factory UsersException.nameTaken() => UsersException._('This name is taken, please try another one.');
  factory UsersException.cannotDelete() => UsersException._('Cannot delete user: only admins can delete users.');
  factory UsersException.cannotUpdateUsername() => UsersException._("Cannot update username: non-admins can only edit one's own names.");
  factory UsersException.cannotUpdatePassword() => UsersException._('Cannot update password: one could only edit passwords of oneself.');
  factory UsersException.notFound() => UsersException._('User Not Found');

  @override
  String toString() {
    return 'Users Exception: $message';
  }
}
