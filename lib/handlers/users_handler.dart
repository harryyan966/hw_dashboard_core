import 'package:hw_dashboard_core/hw_dashboard_core.dart';

abstract class IUsersHandler {
  // change state
  Future<Id> createUser({
    required String name,
    required String password,
    required Role role,
    AppFile? profileImage,
  });

  Future<void> deleteUser({
    required Id id,
  });

  Future<void> deleteCurrentUser();

  Future<void> updateUserName({
    required Id id,
    required String name,
  });

  Future<void> updateUserPassword({
    required Id id,
    required String password,
  });

  // retrieve state
  Future<UserInfo> getCurrentUser();

  Future<UserInfo?> getUserById({
    required Id id,
  });

  Future<List<UserInfo>> searchUsers({
    String? name,
    Role? role,
    int? limit,
    int? skip,
  });
}
