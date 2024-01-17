import 'package:hw_dashboard_core/services/id_generator/id.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:syntax_sugar/map/extension.dart';

part 'assignment_info.g.dart';

@JsonSerializable(explicitToJson: true)
class AssignmentInfo {
  AssignmentInfo({
    required this.id,
    required this.course,
    required this.name,
    required this.description,
    required this.dueDate,
  });

  factory AssignmentInfo.fromJson(Json json) => _$AssignmentInfoFromJson(json);
  Json toJson() => _$AssignmentInfoToJson(this);

  final Id id;
  final Id course;
  final String name;
  final String description;
  final DateTime dueDate;
}
