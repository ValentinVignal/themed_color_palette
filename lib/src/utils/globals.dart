import 'package:themed_color_palette/src/themed_color_palette.dart';
import 'package:themed_color_palette/src/utils/theme.dart';

/// Divider for class names.
const divider = r'$';

/// Themes.
mixin Themes {
  /// The list of themes.
  ///
  /// For example:
  static final List<ThemeDefinition> themes = [];

  /// The default theme is the first one in the list of themes.
  static String get defaultTheme => themes.first.name;
}

/// All the values.
final allValues = <String, Value>{};

/// Errors.
final errors = <String>[];

/// RegExp for camel case.
final camelCaseRegExp = RegExp(r'^[a-z]+((\d)|([A-Z0-9][a-z0-9]+))*([A-Z])?$');

/// Base names.
mixin BaseName {
  /// Themed base name.
  static const themed = '.themed';

  /// Shared base name.
  static const shared = '.shared';

  /// Color palette base name.
  static var colorPalette = '';
}
