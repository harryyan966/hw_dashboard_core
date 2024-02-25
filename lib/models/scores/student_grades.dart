import 'package:hw_dashboard_core/hw_dashboard_core.dart';
import 'package:syntax_sugar/map/extension.dart';

class StudentGrades {
  const StudentGrades({
    required this.assignments,
    required this.grades,
  });

  factory StudentGrades.fromJson(Json json) => StudentGrades(
        assignments: (json['assignments'] as List<Json>).map(AssignmentInfo.fromJson).toList(),
        grades: (json['grades'] as Map<String, double>).map((k, v) => MapEntry(Id.fromJson(k), v)),
      );

  Json toJson() => {
        'assignments': assignments.map((e) => e.toJson()),
        'grades': grades.map((key, value) => MapEntry(key.toJson(), value)),
      };

  final List<AssignmentInfo> assignments;
  final Map<Id, double> grades;
}
