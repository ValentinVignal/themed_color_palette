library themed_color_palette;

import 'dart:math';

import 'package:themed_color_palette/src/utils/theme.dart';
import 'package:themed_color_palette/src/utils/utils.dart';

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
part 'value/value_extensions.dart';
part 'value/value_type.dart';

/// The color palette containing everything.
class ColorPalette extends ThemedJsonToDart {
  /// The color palette containing everything.
  factory ColorPalette.fromJson({required Map<String, dynamic> json}) {
    // Themes.
    _addThemes(json['.themes'] as List);
    BaseName.colorPalette = (json['.name'] as String).firstUpperCase;
    _addPlatforms(List<String>.from(json['.platforms'] as List? ?? const []));
    return ColorPalette._fromJson(json: json);
  }

  /// [ColorPalette] from Json.
  ColorPalette._fromJson({required Map<String, dynamic> json})
      : version = json['.version'] as String,
        super(
          json: json,
          context: BuildContext(
            names: [json['.name'] as String],
            platforms:
                List<String>.from(json['.platforms'] as List? ?? const []),
          ),
        ) {
    // Check the themes have valid names (camelCase)
    sharedValues.addAll((json[BaseName.shared] as Map)
        .entries
        .map(
          (entry) => SharedJsonToDart.fromJson(
            json: entry.value as Map<String, dynamic>,
            context: BuildContext(
              names: [entry.key as String],
              platforms: Themes.platforms,
            ),
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
              platforms: Themes.platforms,
            ),
          ),
        )
        .toList());
  }

  static void _addThemes(List themes) {
    // Check the names.
    for (final theme in themes) {
      final ThemeDefinition themeDefinition;
      if (theme is String) {
        themeDefinition = ThemeDefinition(name: theme);
      } else if (theme is Map) {
        themeDefinition = ThemeDefinition(
          name: theme.keys.single as String,
          from: (theme.values.single as Map)['import'] as String,
        );
      } else {
        errors.add('Theme $theme is not a String or a Map');
        continue;
      }
      Themes.themes.add(themeDefinition);
      if (!camelCaseRegExp.hasMatch(themeDefinition.name)) {
        errors.add('Theme "$theme" is not in camelCase');
      }
    }
  }

  static void _addPlatforms(List<String> platforms) {
    // Add it to the global variable.
    Themes.platforms.addAll(platforms);
    // Check the names.
    for (final platform in platforms) {
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

  /// The `body` callback to five to the [DartDefineContext].
  String body({required String platform}) {
    final superContextBodyBuffer = StringBuffer();

    // Shared attributes
    if (constants.isNotEmpty) {
      for (final value in constants.where(
        (value) => value.context.includesPlatform(platform),
      )) {
        superContextBodyBuffer
          ..writeln()
          ..write(value.dartParameter(platform: ''));
      }
    }
    return superContextBodyBuffer.toString();
  }

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
        ..writeLine(1, '/// ${theme.name.firstUpperCase} theme.')
        ..writeLine(1, '${theme.name.firstLowerCase},');
    }
    buffer
      ..writeLine(0, '}')
      ..writeln()

      // Extension on the enum
      ..writeLine(0, '/// Extension on [Themes].')
      ..writeLine(0, 'extension ThemesExtension on Themes {');
    for (final platform in ['', ...Themes.platforms]) {
      final platformWithSpace = platform.isNotEmpty ? ' $platform' : '';
      final extensionGetterBody = StringBuffer();
      for (final theme in Themes.themes.sublist(1)) {
        extensionGetterBody
          ..writeLine(3, 'case Themes.${theme.name.firstLowerCase}:')
          ..writeLine(4,
              'return ${dartConstructor(theme: theme.name, platform: platform)};');
      }
      extensionGetterBody
        ..writeLine(3, 'case Themes.${Themes.defaultTheme.firstLowerCase}:')
        ..writeLine(3, 'default:')
        ..write(
          '  ' * 4 +
              'return ${dartConstructor(theme: Themes.defaultTheme, platform: platform)};',
        );
      buffer.write('''

  /// Returns the$platformWithSpace theme color palette.
  ${classNameWithPlatform(platform: platform)} get colorPalette${platform.firstUpperCase} {
    switch (this) {
$extensionGetterBody
    }
  }
''');
    }
    buffer
      ..writeLine(0, '}')
      ..writeln()
      ..write(valueExtensions)
      ..writeln()

      // Color palette
      ..write(super.dartDefine(DartDefineContext(
        body: body,
      )));
    return buffer.toString();
  }

  @override
  String toJsonString() => throw Exception('This should not have been called');

  @override
  String fromJsonString({
    required String value,
    required String platform,
  }) =>
      throw Exception('This should not have been called');

  @override
  String copyWithJsonString({
    required String value,
    required String platform,
  }) =>
      throw Exception('This should not have been called');

  @override
  String fromYamlString({
    required String value,
    required String platform,
  }) =>
      throw Exception('This should not have been called');

  @override
  String copyWithYamlString({
    required String value,
    required String platform,
  }) =>
      throw Exception('This should not have been called');

  @override
  String toYamlString() => throw Exception('This should not have been called');
}
