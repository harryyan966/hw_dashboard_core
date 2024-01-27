class Validator<T> {
  Validator._(this.validate);

  final String? Function(T? value) validate;

  static Validator<T> custom<T>(String? Function(T? value) validate) => Validator._(validate);

  static Validator<T> compose<T>(List<Validator<T>> validators) {
    return Validator._(
      (value) {
        for (final validator in validators) {
          final result = validator.validate(value);
          if (result != null) {
            return result;
          }
        }
        return null;
      },
    );
  }

  static Validator<T> required<T>([String? errorMessage]) => Validator._((value) {
        const defaultError = 'This field is required.';
        if (T == String) {
          return value != null && (value as String).isNotEmpty ? null : errorMessage ?? defaultError;
        }
        if ('$T'.startsWith('List')) {
          return value != null && (value as List).isNotEmpty ? null : errorMessage ?? defaultError;
        }
        if ('$T'.startsWith('Map')) {
          return value != null && (value as Map).isNotEmpty ? null : errorMessage ?? defaultError;
        }
        return value != null ? null : errorMessage ?? defaultError;
      });

  static Validator<String> maxLength(int length) => Validator._(
        (value) => value == null || value.length <= length ? null : 'Value must have a maximum length of $length',
      );

  static Validator<String> minLength(int length) => Validator._(
        (value) => value == null || value.length >= length ? null : 'Value must have a minimum length of $length',
      );

  static Validator<int> inRange(int min, int max) => Validator._(
        (value) => value == null || (value <= max && value >= min) ? null : 'Value must be in the range [$min, $max]',
      );
}
