import 'package:hw_dashboard_core/hw_dashboard_core.dart';

abstract class ICoursesHandler {
  // change state
  Future<Id> createCourse({
    required String name,
    required Id teacher,
    required int grade,
    required int year,
    required Semester semester,
    required List<Id> students,
  });

  Future<void> deleteCourse({
    required Id id,
  });

  Future<void> updateCourseInfo({
    required Id id,
    String? name,
    UserInfo? teacher,
    int? grade,
    int? year,
    Semester? semester,
  });

  Future<void> addStudentToCourse({
    required Id id,
    required Id student,
  });

  Future<void> removeStudentFromCourse({
    required Id id,
    required Id student,
  });

  // retrieve state
  Future<CourseDetail?> getCourseDetail({
    required Id id,
  });

  Future<List<CourseInfo>> searchRelevantCourses({
    String? name,
    int? grade,
    int? year,
    Semester? semester,
    int? limit,
    int? skip,
  });
}
