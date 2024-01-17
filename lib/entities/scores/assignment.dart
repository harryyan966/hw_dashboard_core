import 'package:hw_dashboard_core/services/id_generator/id.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:syntax_sugar/map/extension.dart';

part 'assignment.g.dart';


@JsonSerializable(explicitToJson: true)
class Assignment {
  Assignment({
    required this.id,
    required this.course,
    required this.name,
    required this.description,
    required this.dueDate,
  });

  factory Assignment.fromJson(Json json) => _$AssignmentFromJson(json);
  Json toJson() => _$AssignmentToJson(this);

  final Id id;
  final Id course;
  final String name;
  final String description;
  final DateTime dueDate;
}
