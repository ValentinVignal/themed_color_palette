part of theme_color_palette;

/// Color
class Color extends Value {
  /// Color
  Color.fromJson({
    required dynamic color,
    required List<String> path,
    required String? theme,
  })  : color = color is String
            ? color
            : (allValues[Value._allValuesImportKey(
                path: (color as Map)['import'] as String,
                theme: theme,
              )]! as Color)
                .color,
        opacity = color is Map
            ? (color['withOpacity'] is Map
                ? (allValues[Value._allValuesImportKey(
                    path: (color['withOpacity'] as Map)['import'] as String,
                    theme: theme,
                  )]! as Double)
                    .value
                : color['withOpacity'] as double?)
            : null,
        super(value: color, path: path, theme: theme) {
    if (color is String && !_regExpColor.hasMatch(color)) {
      errors.add('Color "${path.last}": $color is not in aarrggbb format (location: $path)');
    }
    if (opacity != null) {
      if (0 > opacity! || 1 < opacity!) {
        errors.add('Opacity of "${path.last}" ($opacity) is not in [0, 1] (location: $path)');
      }
    }
  }

  static final _regExpColor = RegExp(r'^[a-fA-F0-9]{8}$');

  @override
  String get className => 'Color';

  /// Color value
  final String color;

  /// Opacity if the color (if this is an imported color)
  final double? opacity;

  /// Final value of the color
  String get value {
    if (opacity == null) {
      return color;
    }
    return opacityDoubleToHexadecimal(opacity!) + color.substring(2);
  }

  /// Opacity double to hexadecimal
  static String opacityDoubleToHexadecimal(double value) => (255 * min(max(value, 0), 1)).round().toRadixString(16);

  @override
  String get dartConstructor {
    return 'const Color(0x$value)';
  }
}
