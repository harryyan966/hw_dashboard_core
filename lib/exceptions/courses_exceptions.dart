import 'package:hw_dashboard_core/helpers/app_exception.dart';

class CoursesException  extends AppException {
  CoursesException._(super.message);

  factory CoursesException.notFound() => CoursesException._('Blog Not Found');

  @override
  String toString() {
    return 'Courses Exception: $message';
  }
}
