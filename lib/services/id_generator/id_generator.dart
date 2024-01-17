import 'package:hw_dashboard_core/hw_dashboard_core.dart';

abstract class IdGenerator {
  Future<Id> genId();

  Future<void> checkId(Id id);
}
