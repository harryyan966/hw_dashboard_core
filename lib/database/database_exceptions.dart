class DatabaseException implements Exception {
  DatabaseException._(this.message);

  factory DatabaseException.notOpened() => DatabaseException._('Database Not Opened');
  factory DatabaseException.noId() => DatabaseException._('Entry has no id field');
  factory DatabaseException.noEntry() => DatabaseException._('No Such Entry');
  factory DatabaseException.duplicateIds() => DatabaseException._('Duplicate Ids');

  final String message;

  @override
  String toString() {
    return 'Database Exception: $message';
  }
}
