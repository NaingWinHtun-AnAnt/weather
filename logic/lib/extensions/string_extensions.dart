extension StringExtensions on String? {
  bool isNull() => this == null;

  bool isNotNull() => !isNull();

  bool isEmpty() => this == "";

  bool isNotEmpty() => !isEmpty();

  bool isNullOrEmpty() => isNull() || isEmpty();

  bool isNotNullOrEmpty() => !isNullOrEmpty();
}
