import 'package:hw_dashboard_core/hw_dashboard_core.dart';
import 'package:syntax_sugar/map/extension.dart';

class CourseGrades {
  const CourseGrades({
    required this.assignments,
    required this.grades,
  });

  factory CourseGrades.fromJson(Json json) => CourseGrades(
        assignments: (json['assignments'] as List<Json>).map(AssignmentInfo.fromJson).toList(),
        grades: (json['grades'] as Map<String, Map<String, double>>).map((k1, v1) => MapEntry(Id.fromJson(k1), v1.map((k2, v2) => MapEntry(Id.fromJson(k2), v2)))),
      );

  Json toJson() => {
        'assignments': assignments.map((e) => e.toJson()),
        'grades': grades.map((k1, v1) => MapEntry(k1.toJson(), v1.map((k2, v2) => MapEntry(k2.toJson(), v2)))),
      };

  final List<AssignmentInfo> assignments;
  final Map<Id, Map<Id, double>> grades;
}
