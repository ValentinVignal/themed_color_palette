import 'package:theme_color_palette/src/theme_color_palette.dart';

/// Divider for class names.
const divider = r'$';

/// Themes.
mixin Themes {
  /// The list of themes.
  static final List<String> themes = [];

  /// The list of extra themes.
  static final List<String> extraThemes = [];

  /// The default theme is the first one in the list of themes.
  static String get defaultTheme => themes.first;

  static final List<String> platforms = [];
}

// TODO(Valentin): Move this variable
/// All the values.
final allValues = <String, Value>{};

/// Errors.
final errors = <String>[];

/// RegExp for camel case.
final camelCaseRegExp = RegExp(r'^[a-z]+((\d)|([A-Z0-9][a-z0-9]+))*([A-Z])?$');

mixin BaseName {
  static const themed = '.themed';
  static const shared = '.shared';
  static var colorPalette = '';
}
