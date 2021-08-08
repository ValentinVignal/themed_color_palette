part of theme_color_palette;

/// Value
abstract class Value {
  /// Value
  Value({
    required dynamic value,
    required this.path,
    required this.theme,
  }) : import = value is Map ? value['import'] as String? : null {
    allValues[_allValuesKey(path: path, theme: theme)] = this;
  }

  /// Separator for the import string format
  static const importSeparator = '.';

  // The value key when the value is saved
  static String _allValuesKey({required List<String> path, required String? theme}) {
    final _pathString = path.map(JsonToDart.firstLowerCase).join(importSeparator);
    if (theme == null) {
      // This is a shared value
      return _pathString;
    } else {
      // This is a themed value
      return '$_pathString$divider${JsonToDart.firstLowerCase(theme)}';
    }
  }

  // The value key when the value is imported

  static String _allValuesImportKey({required String path, required String? theme}) {
    final isShared = path.startsWith(ColorPalette.sharedBaseName);
    late String _pathString;
    if (isShared) {
      _pathString = ColorPalette.sharedBaseName +
          importSeparator +
          path.substring(ColorPalette.sharedBaseName.length + 1).split(importSeparator).map(JsonToDart.firstLowerCase).join(importSeparator);
    } else {
      _pathString =
          JsonToDart.firstLowerCase(ColorPalette.baseName) + importSeparator + path.split(importSeparator).map(JsonToDart.firstLowerCase).join(importSeparator);
    }

    if (isShared) {
      // This is a shared value
      return _pathString;
    } else {
      // This is a themed value
      return '$_pathString$divider${JsonToDart.firstLowerCase(theme!)}';
    }
  }

  /// Value from Json
  static Value fromJson({
    required dynamic value,
    required ValueType type,
    required List<String> path,
    required String? theme,
  }) {
    switch (type) {
      case ValueType.doubleNumber:
        return Double.fromJson(value: value, path: path, theme: theme);
      case ValueType.intNumber:
        return Int.fromJson(value: value, path: path, theme: theme);
      case ValueType.fontWeight:
        return FontWeight.fromJson(fontWeight: value, path: path, theme: theme);
      case ValueType.boolean:
        return Bool.fromJson(value: value, path: path, theme: theme);
      case ValueType.brightness:
        return Brightness.fromJson(brightness: value, path: path, theme: theme);
      case ValueType.color:
      default:
        return Color.fromJson(color: value, path: path, theme: theme);
    }
  }

  /// Path
  final List<String> path;

  /// If `null` it means this is a shared value
  final String? theme;

  /// Import path
  final String? import;

  /// Whether or not this is an imported value
  bool get isImported => import?.isNotEmpty ?? false;

  /// Dart constructor to override
  String get dartConstructor;

  /// Dart class name to override
  String get className;
}
