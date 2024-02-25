import 'dart:typed_data';

import 'package:syntax_sugar/map/extension.dart';

class AppFile {
  AppFile({
    required this.name,
    required this.bytes,
  });

  factory AppFile.fromJson(Json json) => AppFile(
        name: json.get('name'),
        bytes: json.get('bytes'),
      );

  String toJson() => name;

  final String name;
  final Uint8List bytes;
}
