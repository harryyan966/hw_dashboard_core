import 'package:hw_dashboard_core/hw_dashboard_core.dart';
import 'package:syntax_sugar/map/extension.dart';

class Account {
  Account({
    required this.id,
    required this.role,
  });

  factory Account.fromJson(Json json) => Account(
        id: Id(json.get('id')),
        role: Role.values.byName(json.get('role')),
      );

  final Id id;
  final Role role;
}
