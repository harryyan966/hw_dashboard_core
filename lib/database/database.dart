import 'package:hw_dashboard_core/hw_dashboard_core.dart';
import 'package:syntax_sugar/map/extension.dart';

abstract class Database {
  const Database();

  Future<void> open();

  DatabaseCollection collection(DatabaseTable collection);
}

abstract class DatabaseCollection {
  const DatabaseCollection();

  // change state
  Future<Id> create(Json entry);
  Future<void> delete(Id id);
  Future<void> update(Id id, Json fields);

  // retrieve state
  Future<Json?> get(Id id, {Map<String, DatabaseProjectionRule>? fields});
  Future<List<Json>> find({
    Json filters = const {},
    String? keyword,
    Map<String, DatabaseProjectionRule>? fields,
    int? limit,
    int? skip,
  });
}
