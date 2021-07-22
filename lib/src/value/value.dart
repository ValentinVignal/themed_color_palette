part of theme_color_palette;

/// Value
abstract class Value {
  /// Value
  Value({
    required dynamic value,
    required this.path,
    required this.theme,
  }) : import = List<String>.from((value is Map ? value['import'] as List? : null) ?? []) {
    allValues[_allValuesKey(path: path, theme: theme)] = this;
  }

  // The value key when the value is saved
  static String _allValuesKey({required Names path, required String? theme}) {
    final _pathString = path.map(JsonToDart.firstUpperCase).join(divider);
    if (theme == null) {
      // This is a shared value
      return _pathString;
    } else {
      // This is a themed value
      return '$_pathString.${JsonToDart.firstLowerCase(theme)}';
    }
  }

  // The value key when the value is imported
  static String _allValuesImportKey({required Names path, required String? theme}) {
    final isShared = path.first == ColorPalette.sharedBaseName;
    final _pathString = [if (!isShared) ColorPalette.baseName, ...path].map(JsonToDart.firstUpperCase).join(divider);
    if (isShared) {
      // This is a shared value
      return _pathString;
    } else {
      // This is a themed value
      return '$_pathString.${JsonToDart.firstLowerCase(theme!)}';
    }
  }

  /// Value from Json
  static Value fromJson({
    required dynamic value,
    required ValueType type,
    required Names path,
    required String? theme,
  }) {
    switch (type) {
      case ValueType.doubleNumber:
        return Double.fromJson(value: value, path: path, theme: theme);
      case ValueType.intNumber:
        return Int.fromJson(value: value, path: path, theme: theme);
      case ValueType.fontWeight:
        return FontWeight.fromJson(fontWeight: value, path: path, theme: theme);
      case ValueType.color:
      default:
        return Color.fromJson(color: value, path: path, theme: theme);
    }
  }

  /// Path
  final Names path;

  /// If `null` it means this is a shared value
  final String? theme;

  /// Import path
  final List<String> import;

  /// Whether or not this is an imported value
  bool get isImported => import.isNotEmpty;

  /// Dart constructor to override
  String get dartConstructor;

  /// Dart class name to override
  String get className;
}
