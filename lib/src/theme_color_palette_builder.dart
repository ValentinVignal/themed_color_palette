import 'dart:convert' as dart_convert;
import 'package:build/build.dart';

/// A Json
typedef Json = Map<String, dynamic>;

/// A List of Json
typedef Jsons = List<Json>;

/// Theme Color Palette Builder
class ThemeColorPaletteBuilder implements Builder {
  @override
  Map<String, List<String>> get buildExtensions => {
        '.theme.json': ['.theme.g.dart'],
      };

  @override
  Future<void> build(BuildStep buildStep) async {
    // Retrieve the currently matched asset
    final inputId = buildStep.inputId;

    // Create a new target `AssetId` based on the current one
    final copyAssetId = inputId.changeExtension('.g.dart');
    final content = await buildStep.readAsString(inputId);
    final json = dart_convert.json.decode(content) as Json;
    final colorPalette = ColorPalette.fromJson(json);

    final buffer = StringBuffer()
      ..writeln("import 'package:flutter/material.dart';")
      ..write(colorPalette.toDart());
    // Write out the new asset
    await buildStep.writeAsString(copyAssetId, buffer.toString());
  }
}

mixin ClassInstanceName {
  String get name;

  String get className => name[0].toUpperCase() + name.substring(1);
  String get instanceName => name[0].toLowerCase() + name.substring(1);
}

// ignore: one_member_abstracts
abstract class JsonToDart {
  const JsonToDart.fromJson(Json map);

  String toDart({int indent = 0});
}

const divider = r'$';
const baseName = 'ThemeColorPalette';
String fullClassName(Iterable<String> names) => names.join(divider);

/// The color palette containing everything
class ColorPalette implements JsonToDart {
  /// [ColorPalette] from Json
  ColorPalette.fromJson(Json map)
      : shared = (map['shared'] as List)
            .map((collection) => SharedCollection.fromJson(collection as Json))
            .toList(),
        specific = Specific.fromJson(map['specific'] as Json);

  /// Shared
  final List<SharedCollection> shared;

  final Specific specific;

  @override
  String toDart({int indent = 0}) {
    final buffer = StringBuffer()
      ..writeLine(0, 'class $baseName {')
      ..writeLine(1, 'const $baseName();')
      ..writeln();
    for (final sharedCollection in shared) {
      buffer.writeLine(1,
          'static const ${sharedCollection.instanceName} = ${sharedCollection.className}();');
    }
    buffer
      ..writeLine(0, '}')
      ..writeln();
    for (final collection in shared) {
      buffer
        ..write(collection.toDart())
        ..writeln();
    }
    buffer.write(specific.toDart());
    return buffer.toString();
  }
}

class SharedCollection with ClassInstanceName implements JsonToDart {
  SharedCollection.fromJson(Json map)
      : name = map['name'] as String,
        colors = (map['values'] as List)
            .map<Colour>((value) => Colour.fromJson(value as Json))
            .toList();
  @override
  final String name;

  @override
  String get className => fullClassName([baseName, super.className]);
  final List<Colour> colors;

  @override
  String toDart({int indent = 0}) {
    final buffer = StringBuffer()
      ..writeLine(0, 'class $className {')
      ..writeLine(1, 'const $className();')
      ..writeln();
    for (final color in colors) {
      buffer.writeLine(1, 'static const ${color.name} = ${color.toDart()}');
    }
    buffer..writeln('}')..writeln();
    return buffer.toString();
  }
}

class Specific implements JsonToDart {
  Specific.fromJson(Json json)
      : themeNames = List<String>.from(json['themes'] as List),
        collections = (map['values'] as List)
            .map((collection) => SharedCollection.fromJson(collection as Json))
            .toList();

  final List<String> themeNames;

  final List<SpecificCollection> collections;

  @override
  String toDart({int indent = 0}) {
    final buffer = StringBuffer();
    for (final themeName in themeNames) {
      final _className = baseName + themeName;

      buffer
        ..writeLine(0, 'class $_className extends $baseName {')
        ..writeLine(1, 'const $_className();');

      buffer..writeLine(0, '}');
    }
    return buffer.toString();
  }
}

class SpecificCollection with ClassInstanceName implements JsonToDart {
  SpecificCollection.fromJson({
    required Json map,
    required this.themeName,
  })  : name = map['name'] as String,
        colors = (map['values'] as List)
            .map<Colour>((value) => Colour.fromJson(value as Json))
            .toList();
  @override
  final String name;

  final String themeName;

  @override
  String get className => fullClassName([
        baseName + themeName,
        super.className,
      ]);
  final List<Colour> colors;

  @override
  String toDart({int indent = 0}) {
    final buffer = StringBuffer()
      ..writeLine(0, 'class $className {')
      ..writeLine(1, 'const $className(');
    for (final color in colors) {
      buffer.writeLine(2, 'required this.${color.name}');
    }
    buffer
      ..writeLine(1, ');')
      ..writeln();
    for (final color in colors) {
      buffer.writeLine(1, 'final Color ${color.name};');
    }
    buffer..writeln('}')..writeln();
    return buffer.toString();
  }
}

/// So no overlap with flutter [Colour]
class Colour implements JsonToDart {
  Colour.fromJson(Json map)
      : name = map['name'] as String,
        color = map['value'] as String;
  // color = f.Colors.white;

  final String name;
  // final f.Color color;
  final String color;

  @override
  String toDart({int indent = 0}) {
    return 'Color(0x$color);';
  }
}

extension StringBufferExtension on StringBuffer {
  static String indent(int indent) => '\t' * indent;

  void writeLine(int indentValue, String line) {
    writeln(indent(indentValue) + line);
  }
}
