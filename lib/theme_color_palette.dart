import 'dart:convert' as dart_convert;

import 'package:build/build.dart';
import 'package:theme_color_palette/src/theme_color_palette.dart';
import 'package:yaml/yaml.dart';

/// Theme Color Palette
Builder themeColorPaletteGeneratorBuilder(BuilderOptions options) {
  return ThemeColorPaletteBuilder();
}

/// Theme Color Palette Builder
class ThemeColorPaletteBuilder implements Builder {
  @override
  Map<String, List<String>> get buildExtensions => {
        '.theme.yaml': ['.theme.g.dart'],
      };

  @override
  Future<void> build(BuildStep buildStep) async {
    // Retrieve the currently matched asset
    final inputId = buildStep.inputId;

    // Create a new target `AssetId` based on the current one
    final copyAssetId = inputId.changeExtension('.g.dart');
    final content = await buildStep.readAsString(inputId);
    final json = dart_convert.json.decode(dart_convert.json.encode(loadYaml(content)));
    final colorPalette = ColorPalette.fromJson(json: json as Map<String, dynamic>);

    final buffer = StringBuffer()
      ..writeln('// ! GENERATED CODE - DO NOT MANUALLY EDIT')
      ..writeln()
      ..writeln("import 'package:flutter/material.dart';")
      ..writeln()
      ..write(colorPalette.dartDefine());
    // Write out the new asset
    await buildStep.writeAsString(copyAssetId, buffer.toString());

    if (errors.isNotEmpty) {
      log.warning(r' /!\ ----- Errors ----- /!\');
      errors.forEach(log.warning);
      throw Exception();
    }
  }
}
