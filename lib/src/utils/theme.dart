/// The definition of a theme.
///
/// Its [name] is the name of the theme.
///
/// If [from] is non null, it means that the theme is based on another theme.
class ThemeDefinition {
  /// The definition of a theme.
  ///
  /// Its [name] is the name of the theme.
  ///
  /// If [from] is non null, it means that the theme is based on another theme.
  const ThemeDefinition({
    required this.name,
    this.from,
  });

  /// The name of the theme.
  final String name;

  /// the name of the theme from which this theme is based.
  ///
  /// If null, it means that this theme is either the default theme or a theme
  /// based on the default theme.
  final String? from;

  @override
  String toString() {
    return '''
ThemeDefinition(
  name: $name,
  from: $from,
)
''';
  }
}
