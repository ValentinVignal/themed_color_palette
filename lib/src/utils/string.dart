/// Extension on [String].
extension StringExtension on String {
  /// Set the first letter of a string in lower case.
  ///
  /// ! String must not be empty.
  String get firstLowerCase => this[0].toLowerCase() + substring(1);

  /// Set the first letter of a string in upper case.
  ///
  /// ! String must not be empty.
  String get firstUpperCase => this[0].toUpperCase() + substring(1);
}
