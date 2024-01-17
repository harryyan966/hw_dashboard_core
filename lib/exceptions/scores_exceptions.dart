import 'package:hw_dashboard_core/helpers/app_exception.dart';

class ScoresException  extends AppException {
  ScoresException._(super.message);

  factory ScoresException.notFound() => ScoresException._('Blog Not Found');

  @override
  String toString() {
    return 'Scores Exception: $message';
  }
}
