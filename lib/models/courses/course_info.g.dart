// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseInfo _$CourseInfoFromJson(Map<String, dynamic> json) => CourseInfo(
      id: json['id'] as String,
      name: json['name'] as String,
      teacher: UserInfo.fromJson(json['teacher'] as Map<String, dynamic>),
      grade: json['grade'] as int,
      year: json['year'] as int,
      semester: $enumDecode(_$SemesterEnumMap, json['semester']),
    );

Map<String, dynamic> _$CourseInfoToJson(CourseInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'teacher': instance.teacher.toJson(),
      'grade': instance.grade,
      'year': instance.year,
      'semester': _$SemesterEnumMap[instance.semester]!,
    };

const _$SemesterEnumMap = {
  Semester.fall: 'fall',
  Semester.spring: 'spring',
};
