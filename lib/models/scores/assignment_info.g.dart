// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignment_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssignmentInfo _$AssignmentInfoFromJson(Map<String, dynamic> json) =>
    AssignmentInfo(
      id: Id.fromJson(json['id'] as String),
      course: Id.fromJson(json['course'] as String),
      name: json['name'] as String,
      description: json['description'] as String,
      dueDate: DateTime.parse(json['dueDate'] as String),
    );

Map<String, dynamic> _$AssignmentInfoToJson(AssignmentInfo instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'course': instance.course.toJson(),
      'name': instance.name,
      'description': instance.description,
      'dueDate': instance.dueDate.toIso8601String(),
    };
