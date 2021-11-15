library theme_color_palette;

import 'dart:math';

part 'collection.dart';
part 'globals.dart';
part 'json_to_dart.dart';
part 'object_type.dart';
part 'shared_collection.dart';
part 'shared_json_to_dart.dart';
part 'shared_value.dart';
part 'string_buffer.dart';
part 'themed_value.dart';
part 'value/bool.dart';
part 'value/brightness.dart';
part 'value/color.dart';
part 'value/double.dart';
part 'value/font_weight.dart';
part 'value/int.dart';
part 'value/value.dart';
part 'value/value_type.dart';

/// The color palette containing everything.
class ColorPalette extends JsonToDart {
  /// [ColorPalette] from Json.
  ColorPalette.fromJson({required Map<String, dynamic> json})
      : version = json['.version'] as String,
        super(json: json, names: [json['.name'] as String]) {
    // Themes.
    _addThemes(List<String>.from(json['.themes'] as List), json['.extraThemes']);
    // Check the themes have valid names (camelCase)
    baseName = names.first;
    sharedValues.addAll((json['.shared'] as Map)
        .entries
        .map((entry) => SharedJsonToDart.fromJson(json: entry.value as Map<String, dynamic>, names: [sharedBaseName, entry.key as String]))
        .toList());
    collections.addAll((json['.themed'] as Map)
        .entries
        .map((entry) => JsonToDart.fromJson(json: entry.value as Map<String, dynamic>, names: [baseName, entry.key as String]))
        .toList());
  }

  /// The base name for themed values.
  static String baseName = '';

  /// The based name for shared values.
  static const sharedBaseName = '.shared';

  static void _addThemes(List<String> themes, dynamic? extraThemes) {
    // Add it to the global variable.
    Themes.themes.addAll(themes);
    // Check the names.
    for (final theme in themes) {
      if (!camelCaseRegExp.hasMatch(theme)) {
        errors.add('Theme "$theme" is not in camelCase');
      }
    }
    if (extraThemes != null) {
      final extraThemesList = List<String>.from(extraThemes as List);
      Themes.extraThemes.addAll(extraThemesList);
      for (final theme in extraThemesList) {
        if (!camelCaseRegExp.hasMatch(theme)) {
          errors.add('Extra theme "$theme" is not in camelCase');
        }
      }
    }
  }

  /// List of collections (themed).
  final List<JsonToDart> collections = [];

  /// List of shared values.
  final List<SharedJsonToDart> sharedValues = [];

  /// Version number.
  final String version;

  @override
  List<JsonToDart> get values => collections;

  @override
  List<SharedJsonToDart> get constants => sharedValues;

  @override
  String dartDefine() {
    final buffer = StringBuffer()
      ..writeLine(0, '// Version: $version.')
      ..writeln()
      ..writeLine(0, '/// Different Themes.')
      ..writeLine(0, 'enum Themes {');

    // Add the enum
    for (final theme in Themes.themes) {
      buffer..writeLine(1, '/// ${JsonToDart.firstUpperCase(theme)} theme.')..writeLine(1, '${JsonToDart.firstLowerCase(theme)},');
    }
    for (final extraTheme in Themes.extraThemes) {
      buffer..writeLine(1, '/// ${JsonToDart.firstUpperCase(extraTheme)} extra theme.')..writeLine(1, '${JsonToDart.firstLowerCase(extraTheme)},');
    }
    buffer
      ..writeLine(0, '}')
      ..writeln();

    // * Extension on enum.
    // Color palette.
    final extensionColorPaletteBody = StringBuffer();
    for (final theme in Themes.themes.sublist(1)) {
      extensionColorPaletteBody..writeLine(3, 'case Themes.${JsonToDart.firstLowerCase(theme)}:')..writeLine(4, 'return ${dartConstructor(theme)};');
    }
    // Default theme.
    extensionColorPaletteBody
      ..writeLine(3, 'case Themes.${JsonToDart.firstLowerCase(Themes.defaultTheme)}:')
      ..writeLine(3, 'default:')
      ..write('        return ${dartConstructor(Themes.defaultTheme)};');

    // Is extra.
    final extensionIsExtraBody = StringBuffer();
    for (final extraTheme in Themes.extraThemes) {
      extensionIsExtraBody.writeLine(3, 'case Themes.${JsonToDart.firstLowerCase(extraTheme)}:');
    }
    if (Themes.extraThemes.isNotEmpty) {
      extensionIsExtraBody.writeLine(4, 'return true;');
    }
    extensionIsExtraBody
      ..writeLine(3, 'default:')
      ..write('        return false;');

    buffer
      ..write('''
/// Extension on [Themes].
extension ThemesExtension on Themes {
  /// Color palette.
  ${JsonToDart.firstUpperCase(baseName)} get colorPalette {
    switch (this) {
$extensionColorPaletteBody
    }
  }

  /// Whether or not it is an extra theme.
  bool get isExtra {
    switch (this) {
$extensionIsExtraBody
    }
  }
}

''')

      // Color palette
      ..write(super.dartDefine());
    return buffer.toString();
  }

  @override
  String toJsonString() => throw Exception('This should not have been called');

  @override
  String fromJsonString(String value) => throw Exception('This should not have been called');
}
