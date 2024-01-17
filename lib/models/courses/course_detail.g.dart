// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseDetail _$CourseDetailFromJson(Map<String, dynamic> json) => CourseDetail(
      info: CourseInfo.fromJson(json['info'] as Map<String, dynamic>),
      students: (json['students'] as List<dynamic>?)
          ?.map((e) => UserInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      assignments: (json['assignments'] as List<dynamic>?)
          ?.map((e) => AssignmentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CourseDetailToJson(CourseDetail instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'students': instance.students?.map((e) => e.toJson()).toList(),
      'assignments': instance.assignments?.map((e) => e.toJson()).toList(),
    };
