import 'package:hw_dashboard_core/models/scores/assignment_info.dart';
import 'package:hw_dashboard_core/services/id_generator/id.dart';

abstract class IScoresHandler {
  // change state
  Future<void> updateScore({
    required Id course,
    required Id assignment,
    required double score,
  });

  Future<Id> createAssignment({
    required Id course,
    required String name,
    required String description,
    required DateTime dueDate,
  });

  Future<AssignmentInfo> deleteAssignment({
    required Id id,
  });

  Future<void> updateAssignment({
    required Id id,
    String? name,
    String? description,
    DateTime? dueDate,
  });

  // retrieve state
  Future<AssignmentInfo?> getAssignmentById({
    required Id id,
  });
}
