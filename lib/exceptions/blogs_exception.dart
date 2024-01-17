import 'package:hw_dashboard_core/helpers/app_exception.dart';

class BlogsException extends AppException {
  BlogsException._(super.message);

  factory BlogsException.notFound() => BlogsException._('Blog not found.');
  factory BlogsException.cannotDelete() => BlogsException._('Cannot delete blog as only admins and authors can do so.');
  factory BlogsException.cannotModify() => BlogsException._('Cannot modify blog as only admins and authors can do so.');

  @override
  String toString() {
    return 'Blogs Exception: $message';
  }
}
