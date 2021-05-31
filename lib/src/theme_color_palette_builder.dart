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

  static String firstLowerCase(String input) => input[0].toLowerCase() + input.substring(1);

  static String firstUpperCase(String input) => input[0].toUpperCase() + input.substring(1);

  String get className => names.map(firstUpperCase).join(r'$');
  String get instanceName => firstLowerCase(names.last);

  String themedConstructor(String theme) => '$className.${firstLowerCase(theme)}()';

  String dartInstance({required String theme}) {
    return '$instanceName = const ${themedConstructor(theme)}';
  }
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

abstract class JsonToDart with ClassInstanceName {
  factory JsonToDart.fromJson({required Json json, List<String> parentName = const []}) {
    final type = ObjectTypeExtension.fromString(json['type'] as String);
    switch (type) {
      case ObjectType.collection:
        return SharedCollection.fromJson(json: json, parentName: parentName);
      case ObjectType.color:
        return Color.fromJson(json: json, parentName: parentName);
    }
  }
  String dartDefine({List<String> themes = const []});
}

const divider = r'$';
const baseName = 'ThemeColorPalette';
String fullClassName(Iterable<String> names) => names.join(divider);

/// The color palette containing everything
class ColorPalette with ClassInstanceName implements JsonToDart {
  /// [ColorPalette] from Json
  ColorPalette.fromJson({required Json json, List<String> parentName = const []})
      : shared = (json['shared'] as List).map((collection) => SharedCollection.fromJson(json: collection as Json, parentName: parentName)).toList(),
        themes = List<String>.from(json['themes'] as List),
        specific = (json['specific'] as List).map((collection) => SpecificCollection.fromJson(json: collection as Json, parentName: parentName)).toList();

  /// Shared
  final List<SharedCollection> shared;

  final List<String> themes;

  @override
  List<String> get names => [baseName];

  final List<SpecificCollection> specific;

  @override
  String dartDefine({List<String> themes = const []}) {
    final buffer = StringBuffer()..writeLine(0, 'class $baseName {');

    for (final theme in this.themes) {
      final initializers = <String>[];
      for (final specificCollection in specific) {
        initializers.add(specificCollection.dartInstance(theme: theme));
      }
      buffer.writeLine(
        1,
        'const ${themedConstructor(theme)}: ${initializers.join(", ")};',
      );
    }

    buffer.writeln();

    for (final sharedCollection in shared) {
      buffer.writeLine(1, 'static const ${sharedCollection.dartInstance(theme: "")};');
    }

    for (final specificCollection in specific) {
      buffer.writeLine(1, 'final ${specificCollection.className} ${specificCollection.instanceName};');
    }
    buffer
      ..writeLine(0, '}')
      ..writeln();
    for (final sharedCollection in shared) {
      buffer.write(sharedCollection.dartDefine());
    }

    for (final specificCollection in specific) {
      buffer.write(specificCollection.dartDefine(themes: this.themes));
    }

    return buffer.toString();
  }

  @override
  String dartInstance({required String theme}) => throw UnimplementedError();
}

class SharedCollection with ClassInstanceName implements JsonToDart {
  SharedCollection.fromJson({required Json json, List<String> parentName = const []})
      : names = [...parentName, json['name'] as String],
        subCollections = (json['values'] as List)
            .map<JsonToDart>((value) => JsonToDart.fromJson(json: value as Json, parentName: [...parentName, json['name'] as String]))
            .toList();
  @override
  final List<String> names;

  @override
  String get className => fullClassName([baseName, super.className]);
  final List<JsonToDart> subCollections;

  @override
  String dartDefine({List<String> themes = const []}) {
    final buffer = StringBuffer()
      ..writeLine(0, 'class $className {')
      ..writeLine(1, 'const $className();')
      ..writeln();
    for (final color in subCollections) {
      buffer.writeLine(1, 'static const ${color.dartInstance(theme: "")};');
    }
    buffer..writeln('}')..writeln();

    for (final subCollection in subCollections) {
      buffer.write(subCollection.dartDefine());
    }
    return buffer.toString();
  }

  @override
  String dartInstance({required String theme}) {
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

class SpecificCollection with ClassInstanceName implements JsonToDart {
  SpecificCollection.fromJson({
    required Json json,
    Names parentName = const [],
  })  : names = [...parentName, json['name'] as String],
        subCollections = (json['values'] as List)
            .map<JsonToDart>((value) => JsonToDart.fromJson(
                  json: value as Json,
                  parentName: [...parentName, json['name'] as String],
                ))
            .toList();
  @override
  final List<String> names;

  final List<JsonToDart> subCollections;

  @override
  String dartDefine({List<String> themes = const []}) {
    final buffer = StringBuffer()
      ..writeLine(0, 'class $className {')
      ..writeln();

    for (final theme in themes) {
      final initializers = <String>[];
      for (final subCollection in subCollections) {
        initializers.add(subCollection.dartInstance(theme: theme));
      }
      buffer.writeLine(
        1,
        'const ${themedConstructor(theme)}: ${initializers.join(", ")};',
      );
    }

    for (final subCollection in subCollections) {
      buffer.writeLine(
        1,
        'final ${subCollection.className} ${subCollection.instanceName};',
      );
    }

    buffer.writeLine(0, '}');
    for (final subCollection in subCollections) {
      buffer.write(subCollection.dartDefine(themes: themes));
    }
    return buffer.toString();
  }
}

/// So no overlap with flutter [Colour]
class Color with ClassInstanceName implements JsonToDart {
  Color.fromJson({required Json json, Names parentName = const []})
      : names = [...parentName, json['name'] as String],
        color = json['value'] as String;

  @override
  final List<String> names;

  final String color;

  @override
  String get className => 'Color';

  @override
  String dartDefine({List<String> themes = const []}) {
    return '';
  }

  @override
  String dartInstance({required String theme}) {
    return '$instanceName = const Color(0x$color)';
  }
}

extension StringBufferExtension on StringBuffer {
  static String indent(int indent) => '\t' * indent;

  void writeLine(int indentValue, String line) {
    writeln(indent(indentValue) + line);
  }
}
