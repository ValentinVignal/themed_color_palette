part of theme_color_palette;

/// Color
class Color extends Value {
  /// Color
  Color.fromJson({
    required dynamic color,
    required List<String> path,
    required String? theme,
  }) : super(value: color, path: path, theme: theme) {
    if (color is String) {
      this.color = color;
      opacity = null;
    } else {
      color as Map;
      if (color.containsKey('value')) {
        this.color = color['value'] as String;
      } else {
        this.color = (allValues[Value._allValuesImportKey(
          path: color['import'] as String,
          theme: theme,
        )]! as Color)
            .value;
      }
      if (color['withOpacity'] is Map) {
        opacity = (allValues[Value._allValuesImportKey(
          path: (color['withOpacity'] as Map)['import'] as String,
          theme: theme,
        )]! as Double)
            .value;
      } else {
        opacity = color['withOpacity'] as double?;
      }
    }

    if (color is String && !_regExpColor.hasMatch(color)) {
      errors.add('Color "${path.last}": $color is not in aarrggbb format (location: $path)');
    }
    if (opacity != null) {
      if (.0 > opacity! || 1 < opacity!) {
        errors.add('Opacity of "${path.last}" ($opacity) is not in [0, 1] (location: $path)');
      }
    }
  }

  static final _regExpColor = RegExp(r'^[a-fA-F0-9]{8}$');

  @override
  String get className => 'Color';

  /// Color value
  late final String color;

  /// Opacity if the color (if this is an imported color)
  late final double? opacity;

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
