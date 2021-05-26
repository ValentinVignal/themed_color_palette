import 'dart:convert';
import 'package:build/build.dart';

class ThemeColorPaletteBuilder implements Builder {
  @override
  Map<String, List<String>> get buildExtensions => {
        '.theme.json': ['.theme.g.dart'],
      };

  @override
  Future<void> build(BuildStep buildStep) async {
    // Retrieve the currently matched asset
    AssetId inputId = buildStep.inputId;

    // Create a new target `AssetId` based on the current one
    var copyAssetId = inputId.changeExtension('.g.dart');
    var content = await buildStep.readAsString(inputId);
    final _json = json.decode(content);
    print(_json);

    final buffer = StringBuffer();

    buffer.writeln("import 'package:flutter/material.dart';");
    buffer.writeln('class ThemeColorPalette {}');

    for (final collection in _json['shared']) {
      buffer.writeln('class ${collection['name']} {');
      for (final color in collection['values']) {
        buffer.writeln('const ${color["name"]} = Color(0x${color["value"]});');
      }
      buffer.writeln('}');
    }

    // Write out the new asset
    await buildStep.writeAsString(copyAssetId, buffer.toString());
  }
}

// class ColorPalette {
//   ColorPalette.fromJson()
// }
