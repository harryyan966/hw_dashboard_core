// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes

class Id {
  const Id(String value) : _value = value;

  factory Id.fromJson(String value) => Id(value);

  String toJson() => _value;

  final String _value;

  @override
  String toString() => _value;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is Id) {
      return toString() == other.toString();
    }
    return false;
  }

  @override
  int get hashCode => _value.hashCode;
}
