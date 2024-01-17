class IdGenerationException implements Exception {
  IdGenerationException._([this.message]);

  factory IdGenerationException.invalidId() => IdGenerationException._('Invalid Id');

  final String? message;

  @override
  String toString() {
    return 'IdGeneration Exception $message';
  }
}
