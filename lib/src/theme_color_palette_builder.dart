import 'dart:convert' as dart_convert;
import 'package:build/build.dart';

/// A Json
typedef Json = Map<String, dynamic>;

/// A List of Json
typedef Jsons = List<Json>;

typedef Names = List<String>;

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
    final colorPalette = ColorPalette.fromJson(json: json);

    final buffer = StringBuffer()
      ..writeln("import 'package:flutter/material.dart';")
      ..writeln()
      ..write(colorPalette.dartDefine());
    // Write out the new asset
    await buildStep.writeAsString(copyAssetId, buffer.toString());
  }
}

mixin ClassInstanceName {
  List<String> get names;

  static String firstLowerCase(String input) =>
      input[0].toLowerCase() + input.substring(1);

  static String firstUpperCase(String input) =>
      input[0].toUpperCase() + input.substring(1);

  String get className => names.map(firstUpperCase).join(r'$');
  String get instanceName => firstLowerCase(names.last);
}

enum ObjectType {
  collection,
  color,
}

extension ObjectTypeExtension on ObjectType {
  static ObjectType fromString(String type) {
    switch (type) {
      case 'collection':
        return ObjectType.collection;
      case 'color':
      default:
        return ObjectType.color;
    }
  }
}

abstract class JsonToDart {
  factory JsonToDart.fromJson(
      {required Json json, List<String> parentName = const []}) {
    final type = ObjectTypeExtension.fromString(json['type'] as String);
    switch (type) {
      case ObjectType.collection:
        return SharedCollection.fromJson(json: json, parentName: parentName);
      case ObjectType.color:
        return Color.fromJson(json: json, parentName: parentName);
    }
  }
  String dartDefine();

  String dartInstance();

  List<String> get names;
}

const divider = r'$';
const baseName = 'ThemeColorPalette';
String fullClassName(Iterable<String> names) => names.join(divider);

/// The color palette containing everything
class ColorPalette with ClassInstanceName implements JsonToDart {
  /// [ColorPalette] from Json
  ColorPalette.fromJson(
      {required Json json, List<String> parentName = const []})
      : shared = (json['shared'] as List)
            .map((collection) => SharedCollection.fromJson(
                json: collection as Json, parentName: parentName))
            .toList(),
        themes = List<String>.from(json['themes'] as List);
  // specific = Specific.fromJson(json['specific'] as Json);

  /// Shared
  final List<SharedCollection> shared;

  final List<String> themes;

  @override
  List<String> get names => [baseName];

  // final Specific specific;

  @override
  String dartDefine() {
    final buffer = StringBuffer()..writeLine(0, 'class $baseName {');

    for (final theme in themes) {
      buffer.writeLine(
        1,
        'const $className.${ClassInstanceName.firstLowerCase(theme)}();',
      );
    }

    buffer.writeln();

    for (final sharedCollection in shared) {
      buffer.writeLine(1, 'static const ${sharedCollection.dartInstance()};');
    }
    buffer
      ..writeLine(0, '}')
      ..writeln();
    for (final sharedCollection in shared) {
      buffer.write(sharedCollection.dartDefine());
    }
    // buffer.write(specific.toDart());
    return buffer.toString();
  }

  @override
  String dartInstance() => throw UnimplementedError();
}

class SharedCollection with ClassInstanceName implements JsonToDart {
  SharedCollection.fromJson(
      {required Json json, List<String> parentName = const []})
      : names = [...parentName, json['name'] as String],
        colors = (json['values'] as List)
            .map<JsonToDart>((value) => JsonToDart.fromJson(
                json: value as Json,
                parentName: [...parentName, json['name'] as String]))
            .toList();
  @override
  final List<String> names;

  @override
  String get className => fullClassName([baseName, super.className]);
  final List<JsonToDart> colors;

  @override
  String dartDefine() {
    final buffer = StringBuffer()
      ..writeLine(0, 'class $className {')
      ..writeLine(1, 'const $className();')
      ..writeln();
    for (final color in colors) {
      buffer.writeLine(1, 'static const ${color.dartInstance()};');
    }
    buffer..writeln('}')..writeln();

    for (final object in colors) {
      buffer.write(object.dartDefine());
    }
    return buffer.toString();
  }

  @override
  String dartInstance() {
    return '$instanceName = $className()';
  }
}

// class Specific implements JsonToDart {
//   Specific.fromJson(Json json)
//       : themeNames = List<String>.from(json['themes'] as List),
//         collections = (json['values'] as List)
//             .map((collection) => SpecificCollection.fromJson(
//                 json: collection as Json, themeName: ''))
//             .toList();

//   final List<String> themeNames;

//   final List<SpecificCollection> collections;

//   @override
//   final List<String> names = [baseName];

//   @override
//   String dartDefine({int indent = 0}) {
//     final buffer = StringBuffer();
//     for (final themeName in themeNames) {
//       final _className = baseName + themeName;

//       buffer
//         ..writeLine(0, 'class $_className extends $baseName {')
//         ..writeLine(1, 'const $_className();');

//       buffer..writeLine(0, '}');
//     }
//     return buffer.toString();
//   }

//   @override
//   String dartInstance() {
//     throw UnimplementedError();
//   }
// }

// class SpecificCollection with ClassInstanceName implements JsonToDart {
//   SpecificCollection.fromJson({
//     required Json json,
//     required this.themeName,
//   })  : name = json['name'] as String,
//         colors = (json['values'] as List)
//             .map<Color>((value) => Color.fromJson(value as Json))
//             .toList();
//   @override
//   final String name;

//   final String themeName;

//   @override
//   String get className => fullClassName([
//         baseName + themeName,
//         super.className,
//       ]);
//   final List<Color> colors;

//   String dartDefine({int indent = 0}) {
//     final buffer = StringBuffer()
//       ..writeLine(0, 'class $className {')
//       ..writeLine(1, 'const $className(');
//     for (final color in colors) {
//       buffer.writeLine(2, 'required this.${color.name}');
//     }
//     buffer
//       ..writeLine(1, ');')
//       ..writeln();
//     for (final color in colors) {
//       buffer.writeLine(1, 'final Color ${color.name};');
//     }
//     buffer..writeln('}')..writeln();
//     return buffer.toString();
//   }

//   @override
//   String dartInstance() {
//     throw UnimplementedError();
//   }
// }

/// So no overlap with flutter [Colour]
class Color with ClassInstanceName implements JsonToDart {
  Color.fromJson({required Json json, Names parentName = const []})
      : names = [...parentName, json['name'] as String],
        color = json['value'] as String;
  // color = f.Colors.white;

  @override
  final List<String> names;
  // final f.Color color;
  final String color;

  @override
  String dartInstance({int indent = 0}) {
    return '$instanceName = Color(0x$color)';
  }

  @override
  String dartDefine() {
    return '';
  }
}

extension StringBufferExtension on StringBuffer {
  static String indent(int indent) => '\t' * indent;

  void writeLine(int indentValue, String line) {
    writeln(indent(indentValue) + line);
  }
}
