// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Course _$CourseFromJson(Map<String, dynamic> json) => Course(
      id: Id.fromJson(json['id'] as String),
      name: json['name'] as String,
      grade: json['grade'] as int,
      year: json['year'] as int,
      semester: $enumDecode(_$SemesterEnumMap, json['semester']),
      teacher: Id.fromJson(json['teacher'] as String),
      students: (json['students'] as List<dynamic>)
          .map((e) => Id.fromJson(e as String))
          .toList(),
    );

Map<String, dynamic> _$CourseToJson(Course instance) => <String, dynamic>{
      'id': instance.id.toJson(),
      'name': instance.name,
      'teacher': instance.teacher.toJson(),
      'grade': instance.grade,
      'year': instance.year,
      'semester': _$SemesterEnumMap[instance.semester]!,
      'students': instance.students.map((e) => e.toJson()).toList(),
    };

const _$SemesterEnumMap = {
  Semester.fall: 'fall',
  Semester.spring: 'spring',
};
