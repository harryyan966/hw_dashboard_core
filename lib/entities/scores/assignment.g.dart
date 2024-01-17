// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Assignment _$AssignmentFromJson(Map<String, dynamic> json) => Assignment(
      id: Id.fromJson(json['id'] as String),
      course: Id.fromJson(json['course'] as String),
      name: json['name'] as String,
      description: json['description'] as String,
      dueDate: DateTime.parse(json['dueDate'] as String),
    );

Map<String, dynamic> _$AssignmentToJson(Assignment instance) =>
    <String, dynamic>{
      'id': instance.id.toJson(),
      'course': instance.course.toJson(),
      'name': instance.name,
      'description': instance.description,
      'dueDate': instance.dueDate.toIso8601String(),
    };
