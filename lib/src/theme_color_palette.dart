library theme_color_palette;

import 'dart:math';

part 'globals.dart';
part 'types.dart';
part 'json_to_dart.dart';
part 'object_type.dart';
part 'value/value_type.dart';
part 'value/color.dart';
part 'value/double.dart';
part 'value/font_weight.dart';
part 'value/int.dart';
part 'value/value.dart';
part 'collection.dart';
part 'themed_value.dart';
part 'shared_value.dart';
part 'string_buffer.dart';
part 'shared_collection.dart';
part 'shared_json_to_dart.dart';
part 'value/bool.dart';
part 'value/brightness.dart';

/// The color palette containing everything
class ColorPalette extends JsonToDart {
  /// [ColorPalette] from Json
  ColorPalette.fromJson({required Map<String, dynamic> json})
      : version = json['.version'] as String,
        super(json: json, names: [json['.name'] as String]) {
    // Themes
    _addThemes(List<String>.from(json['.themes'] as List));
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

  /// The base name for themed values
  static String baseName = '';

  /// The based name for shared values
  static const sharedBaseName = '.shared';

  static void _addThemes(List<String> themes) {
    // Add it to the global variable
    Themes.themes.addAll(themes);
    // Check the names
    for (final theme in themes) {
      if (!camelCaseRegExp.hasMatch(theme)) {
        errors.add('Theme "$theme" is not in camelCase');
      }
    }
  }

  /// List of collections (themed)
  final List<JsonToDart> collections = [];

  /// List of shared values
  final List<SharedJsonToDart> sharedValues = [];

  /// Version number
  final String version;

  @override
  List<JsonToDart> get values => collections;

  @override
  List<SharedJsonToDart> get constants => sharedValues;

  @override
  String dartDefine() {
    final buffer = StringBuffer()
      ..writeLine(0, '// Version: $version')
      ..writeln()
      ..writeLine(0, '/// Different Themes')
      ..writeLine(0, 'enum Themes {');

    // Add the enum
    for (final theme in Themes.themes) {
      buffer..writeLine(1, '/// ${JsonToDart.firstUpperCase(theme)} theme')..writeLine(1, '${JsonToDart.firstLowerCase(theme)},');
    }
    buffer
      ..writeLine(0, '}')
      ..writeln();

    // Extension on enum
    final extensionBody = StringBuffer();
    for (final theme in Themes.themes.sublist(1)) {
      extensionBody..writeLine(3, 'case Themes.${JsonToDart.firstLowerCase(theme)}:')..writeLine(4, 'return ${dartConstructor(theme)};');
    }
    // Default theme
    extensionBody
      ..writeLine(3, 'case Themes.${JsonToDart.firstLowerCase(Themes.defaultTheme)}:')
      ..writeLine(3, 'default:')
      ..writeLine(4, 'return ${dartConstructor(Themes.defaultTheme)};');
    buffer
      ..write('''
extension ThemesExtension on Themes {
  /// Color palette
  ${JsonToDart.firstUpperCase(baseName)} get colorPalette {
    switch (this) {
$extensionBody
    }
  }
}''')

      // Color palette
      ..write(super.dartDefine());
    return buffer.toString();
  }
}
