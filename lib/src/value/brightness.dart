part of themed_color_palette;

/// Brightness enum
enum BrightnessEnum {
  /// Light
  light,

  /// Dark
  dark,
}

/// Font weight enum extension
extension BrightnessEnumExtension on BrightnessEnum {
  /// Possible values
  static final possibleValues = BrightnessEnum.values
      .map(
        (brightness) => brightness.string,
      )
      .toList();

  /// Value front string
  static BrightnessEnum fromString(String string) {
    switch (string) {
      case 'dark':
        return BrightnessEnum.dark;
      case 'light':
      default:
        return BrightnessEnum.light;
    }
  }

  /// Get the string
  String get string {
    switch (this) {
      case BrightnessEnum.dark:
        return 'dark';
      case BrightnessEnum.light:
      default:
        return 'light';
    }
  }
}

/// Font weight
class Brightness extends Value {
  /// Font weight from Json
  Brightness.fromJson({
    required dynamic brightness,
    required List<String> path,
    required String? theme,
  })  : brightness = brightness is String
            ? BrightnessEnumExtension.fromString(brightness)
            : (allValues[Value._importToId(
                import: (brightness as Map)['import'] as String,
                theme: theme,
              )]! as Brightness)
                .brightness,
        super(value: brightness, path: path, theme: theme) {
    if (brightness is String &&
        !BrightnessEnumExtension.possibleValues.contains(
          brightness,
        )) {
      errors.add(
        'Brightness "${path.last}": "$brightness" is not a valid value (possible values: ${BrightnessEnumExtension.possibleValues}, location: $path)',
      );
    }
  }

  @override
  String get className => 'Brightness';

  /// Font weight value
  final BrightnessEnum brightness;

  @override
  String get dartConstructor {
    return 'Brightness.${brightness.string}';
  }

  @override
  String castFromYamlString({
    required String value,
    required bool nullable,
  }) =>
      '_BrightnessToString.fromString($value as String${nullable ? '?' : ''})${nullable ? '' : '!'}';

  @override
  String castToYamlString({
    required String value,
  }) =>
      '$value.name';
}
