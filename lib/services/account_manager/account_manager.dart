import 'package:hw_dashboard_core/hw_dashboard_core.dart';

abstract class AccountManager {
  Future<Account?> getAccountByCredentials(String username, String password);

  Future<Account?> getAccountById(Id id);

  Future<void> logOutByAccountId(Id id);

  Future<void> logOut(Account account);
}
