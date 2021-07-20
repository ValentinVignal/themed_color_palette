part of theme_color_palette;

/// Color
class Color extends Value {
  /// Color
  Color.fromJson({
    required dynamic color,
    required Names path,
    required String? theme,
  })  : color = color is String
            ? color
            : (allValues[Value._allValuesImportKey(
                path: List<String>.from((color as Map)['import'] as List),
                theme: theme,
              )]! as Color)
                .color,
        opacity = color is Map
            ? (color['withOpacity'] is Map
                ? (allValues[Value._allValuesImportKey(
                    path: List<String>.from((color['withOpacity'] as Map)['import'] as List),
                    theme: theme,
                  )]! as Double)
                    .value
                : color['withOpacity'] as double?)
            : null,
        super(value: color, path: path, theme: theme);

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
  static String opacityDoubleToHexadecimal(double value) => (255 * value).round().toRadixString(16);

  @override
  String get dartConstructor {
    return 'const Color(0x$value)';
  }
}
