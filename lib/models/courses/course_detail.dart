import 'package:hw_dashboard_core/models/courses/course_info.dart';
import 'package:hw_dashboard_core/models/scores/assignment_info.dart';
import 'package:hw_dashboard_core/models/users/user_info.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:syntax_sugar/map/extension.dart';

part 'course_detail.g.dart';

@JsonSerializable(explicitToJson: true)
class CourseDetail {
  CourseDetail({
    required this.info,
    this.students,
    this.assignments,
  });

  factory CourseDetail.fromJson(Json json) => _$CourseDetailFromJson(json);
  Json toJson() => _$CourseDetailToJson(this);

  final CourseInfo info;
  final List<UserInfo>? students;
  final List<AssignmentInfo>? assignments;
}
