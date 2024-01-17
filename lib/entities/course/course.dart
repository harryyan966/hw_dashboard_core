import 'package:hw_dashboard_core/entities/course/semester.dart';
import 'package:hw_dashboard_core/services/id_generator/id.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:syntax_sugar/syntax_sugar.dart';

part 'course.g.dart';

@JsonSerializable(explicitToJson: true)
class Course {
  Course({
    required this.id,
    required this.name,
    required this.grade,
    required this.year,
    required this.semester,
    required this.teacher,
    required this.students,
  });

  factory Course.fromJson(Json json) => _$CourseFromJson(json);
  Json toJson() => _$CourseToJson(this);

  final Id id;
  final String name;
  final Id teacher;
  final int grade;
  final int year;
  final Semester semester;
  final List<Id> students;

  Course copyWith({
    Id? id,
    String? name,
    Id? teacher,
    int? grade,
    int? year,
    Semester? semester,
    List<Id>? students,
  }) {
    return Course(
      id: id ?? this.id,
      name: name ?? this.name,
      grade: grade ?? this.grade,
      year: year ?? this.year,
      semester: semester ?? this.semester,
      teacher: teacher ?? this.teacher,
      students: students ?? this.students,
    );
  }
}
