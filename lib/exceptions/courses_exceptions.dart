import 'package:hw_dashboard_core/exceptions/app_exception.dart';

class CoursesException extends AppException {
  CoursesException._(super.message);

  factory CoursesException.notFound() => CoursesException._('Course Not Found');
  factory CoursesException.permissionDenied() =>
      CoursesException._('Sorry, your account does not have permission to do this.');

  @override
  String toString() {
    return 'Courses Exception: $message';
  }
}
