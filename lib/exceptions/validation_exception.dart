import 'dart:convert';

import 'package:syntax_sugar/syntax_sugar.dart';

class ValidationException implements Exception {
  ValidationException.fromMap(Map<String, String?> invalidFields) : invalidFields = {} {
    for (final entry in invalidFields.entries) {
      if (entry.value != null) {
        this.invalidFields[entry.key] = entry.value!;
      }
    }
  }

  ValidationException.fromJsonString(String jsonString)
      : invalidFields = (jsonDecode(jsonString) as Json).map(
          (key, value) => MapEntry(key, value.toString()),
        );

  String toJsonString() => jsonEncode(invalidFields);

  final Map<String, String> invalidFields;

  void throwIfNonEmpty() {
    if (invalidFields.isNotEmpty) {
      throw this;
    }
  }

  @override
  String toString() => toJsonString();
}
