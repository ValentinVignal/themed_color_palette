part of theme_color_palette;

/// Value
abstract class Value {
  /// Value
  Value({
    required dynamic value,
    required this.path,
    required this.theme,
  }) : import = value is Map ? value['import'] as String? : null {
    allValues[_id(path: path, theme: theme)] = this;
  }

  /// Separator for the import string format
  static const importSeparator = '.';

  /// Separator between the path and the theme.
  static const themeSeparator = '..';

  // The value key when the value is saved
  static String _id({required List<String> path, required String? theme}) {
    final _pathString = path.map((_path) => _path.firstLowerCase).join(importSeparator);
    if (theme == null) {
      // This is a shared value
      return [BaseName.shared, _pathString].join(importSeparator);
    } else {
      // This is a themed value
      return '${BaseName.themed}$importSeparator$_pathString$themeSeparator${theme.firstLowerCase}';
    }
  }

  // The value key when the value is imported

  static String _importToId({required String import, required String? theme}) {
    final isShared = import.startsWith(BaseName.shared);
    late String _pathString;
    if (isShared) {
      _pathString = BaseName.shared +
          importSeparator +
          import.substring(BaseName.shared.length + 1).split(importSeparator).map((_path) => _path.firstLowerCase).join(importSeparator);
    } else {
      _pathString = BaseName.themed.firstLowerCase + importSeparator + import.split(importSeparator).map((_path) => _path.firstLowerCase).join(importSeparator);
    }

    if (isShared) {
      // This is a shared value
      return _pathString;
    } else {
      // This is a themed value
      return '$_pathString$themeSeparator${theme!.firstLowerCase}';
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
