library theme_color_palette;

import 'dart:math';

import 'package:theme_color_palette/src/utils/utils.dart';

part 'json_to_dart.dart';
part 'shared/shared_collection.dart';
part 'shared/shared_json_to_dart.dart';
part 'shared/shared_value.dart';
part 'themed/themed_collection.dart';
part 'themed/themed_json_to_dart.dart';
part 'themed/themed_value.dart';
part 'value/bool.dart';
part 'value/brightness.dart';
part 'value/color.dart';
part 'value/double.dart';
part 'value/font_weight.dart';
part 'value/int.dart';
part 'value/value.dart';
part 'value/value_type.dart';

/// The color palette containing everything.
class ColorPalette extends ThemedJsonToDart {
  /// [ColorPalette] from Json.
  ColorPalette.fromJson({required Map<String, dynamic> json})
      : version = json['.version'] as String,
        super(
          json: json,
          context: BuildContext(
            names: [json['.name'] as String],
          ),
        ) {
    // Themes.
    _addThemes(List<String>.from(json['.themes'] as List));
    BaseName.colorPalette = context.name.firstUpperCase;
    _addPlatforms();
    // Check the themes have valid names (camelCase)
    sharedValues.addAll((json[BaseName.shared] as Map)
        .entries
        .map(
          (entry) => SharedJsonToDart.fromJson(
            json: entry.value as Map<String, dynamic>,
            context: BuildContext(names: [entry.key as String]),
          ),
        )
        .toList());
    collections.addAll((json[BaseName.themed] as Map)
        .entries
        .map(
          (entry) => ThemedJsonToDart.fromJson(
            json: entry.value as Map<String, dynamic>,
            context: context.copyWith(
              names: [entry.key as String],
            ),
          ),
        )
        .toList());
  }

  static void _addThemes(List<String> themes) {
    // Add it to the global variable.
    Themes.themes.addAll(themes);
    // Check the names.
    for (final theme in themes) {
      if (!camelCaseRegExp.hasMatch(theme)) {
        errors.add('Theme "$theme" is not in camelCase');
      }
    }
  }

  void _addPlatforms() {
    // Add it to the global variable.
    Themes.platforms.addAll(context.platforms);
    // Check the names.
    for (final platform in context.platforms) {
      if (!camelCaseRegExp.hasMatch(platform)) {
        errors.add('Platform "$platform" is not in camelCase');
      }
    }
  }

  /// List of collections (themed).
  final List<ThemedJsonToDart> collections = [];

  /// List of shared values.
  final List<SharedJsonToDart> sharedValues = [];

  /// Version number.
  final String version;

  @override
  List<ThemedJsonToDart> get values => collections;

  /// The constants
  List<SharedJsonToDart> get constants => sharedValues;

  @override
  String get className => context.className;

  @override
  String dartDefine(DartDefineContext dartDefineContext) {
    final buffer = StringBuffer()
      ..writeLine(0, '// Version: $version.')
      ..writeln()
      ..writeLine(0, '/// Different Themes.')
      ..writeLine(0, 'enum Themes {');

    // Add the enum
    for (final theme in Themes.themes) {
      buffer
        ..writeLine(1, '/// ${theme.firstUpperCase} theme.')
        ..writeLine(1, '${theme.firstLowerCase},');
    }
    for (final extraTheme in Themes.extraThemes) {
      buffer
        ..writeLine(1, '/// ${extraTheme.firstLowerCase} extra theme.')
        ..writeLine(1, '${extraTheme.firstLowerCase},');
    }
    buffer
      ..writeLine(0, '}')
      ..writeln();

    // * Extension on enum.
    // Color palette.
    final extensionColorPaletteBody = StringBuffer();
    for (final theme in Themes.themes.sublist(1)) {
      extensionColorPaletteBody
        ..writeLine(3, 'case Themes.${theme.firstLowerCase}:')
        ..writeLine(4, 'return ${dartConstructor(theme)};');
    }
    // Default theme.
    extensionColorPaletteBody
      ..writeLine(3, 'case Themes.${Themes.defaultTheme.firstLowerCase}:')
      ..writeLine(3, 'default:')
      ..write('        return ${dartConstructor(Themes.defaultTheme)};');

    buffer.write('''
/// Extension on [Themes].
extension ThemesExtension on Themes {
  /// Color palette.
  ${context.baseName} get colorPalette {
    switch (this) {
$extensionColorPaletteBody
    }
  }
}

''');

    final superContextBodyBuffer = StringBuffer();

    // Shared attributes
    if (constants.isNotEmpty) {
      for (final value in constants) {
        superContextBodyBuffer
          ..writeln()
          ..write(value.dartParameter);
      }
    }

    // Color palette
    buffer.write(super.dartDefine(DartDefineContext(
      body: superContextBodyBuffer.toString(),
    )));
    return buffer.toString();
  }

  @override
  String toJsonString() => throw Exception('This should not have been called');

  @override
  String fromJsonString(String value) => throw Exception('This should not have been called');
}
