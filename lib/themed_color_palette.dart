import 'dart:convert' as dart_convert;

import 'package:build/build.dart';
import 'package:themed_color_palette/src/themed_color_palette.dart';
import 'package:themed_color_palette/src/utils/dart_define_context.dart';
import 'package:themed_color_palette/src/utils/globals.dart';
import 'package:yaml/yaml.dart';

/// Themed color palette.
Builder themedColorPaletteGeneratorBuilder(BuilderOptions options) {
  return ThemedColorPaletteBuilder();
}

/// Themed color palette builder.
class ThemedColorPaletteBuilder implements Builder {
  @override
  Map<String, List<String>> get buildExtensions => const {
        '.theme.yaml': ['.theme.g.dart'],
      };

  @override
  Future<void> build(BuildStep buildStep) async {
    // Retrieve the currently matched asset
    final inputId = buildStep.inputId;

    // Create a new target `AssetId` based on the current one
    final copyAssetId = inputId.changeExtension('.g.dart');
    final content = await buildStep.readAsString(inputId);
    final json = dart_convert.json.decode(
      dart_convert.json.encode(loadYaml(content)),
    );
    final colorPalette = ColorPalette.fromJson(
      json: json as Map<String, dynamic>,
    );

    final buffer = StringBuffer()
      ..writeln('// ! GENERATED CODE - DO NOT MANUALLY EDIT')
      ..writeln()
      ..writeln(
          "part of '${inputId.changeExtension('').changeExtension('.dart').pathSegments.last}';")
      ..writeln()
      ..write(colorPalette.dartDefine(const DartDefineContext()));
    // Write out the new asset
    await buildStep.writeAsString(copyAssetId, buffer.toString());

    if (errors.isNotEmpty) {
      log.warning(r' /!\ ----- Errors ----- /!\');
      errors.forEach(log.warning);
      throw Exception();
    }
  }
}
