import 'package:hw_dashboard_core/services/account_manager/account.dart';

abstract class IAuthHandler {
  // change state
  Future<Account> logIn({
    required String username,
    required String password,
  });

  Future<void> logOut();
}
