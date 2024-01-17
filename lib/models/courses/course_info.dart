import 'package:hw_dashboard_core/entities/course/semester.dart';
import 'package:hw_dashboard_core/models/users/user_info.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:syntax_sugar/map/extension.dart';

part 'course_info.g.dart';

@JsonSerializable(explicitToJson: true)
class CourseInfo {
  CourseInfo({
    required this.id,
    required this.name,
    required this.teacher,
    required this.grade,
    required this.year,
    required this.semester,
  });

  factory CourseInfo.fromJson(Json json) => _$CourseInfoFromJson(json);
  Json toJson() => _$CourseInfoToJson(this);

  final String id;
  final String name;
  final UserInfo teacher;
  final int grade;
  final int year;
  final Semester semester;
}
