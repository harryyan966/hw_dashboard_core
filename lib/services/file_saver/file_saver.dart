import 'package:hw_dashboard_core/hw_dashboard_core.dart';

abstract class FileSaver {
  Future<Uri> saveFile(AppFile file);

  Future<List<Uri>> saveFiles(List<AppFile> files);

  Future<void> disposeFile(Uri fileUri);
}
