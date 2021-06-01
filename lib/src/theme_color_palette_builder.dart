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

const divider = r'$';

abstract class JsonToDart {
  /// Get the common parameters
  JsonToDart({required Json json, required Names parentName})
      : isShared = json['shared'] as bool,
        _names = [...parentName, json['name'] as String],
        description = json['description'] as String;

  factory JsonToDart.fromJson({required Json json, List<String> parentName = const []}) {
    final type = ObjectTypeExtension.fromString(json['type'] as String);
    switch (type) {
      case ObjectType.collection:
        return Collection.fromJson(json: json, parentName: parentName);
      case ObjectType.color:
        return Color.fromJson(json: json, parentName: parentName);
    }
  }

  // *  ---------- Attributes ----------

  final Names _names;

  Names get names => _names;

  /// Whether it is shared across **all** themes or not
  final bool isShared;

  final String description;

  String get comment {
    return description.split('\n').map((descriptionBlock) => '/// $descriptionBlock').join('\n');
  }

  /// Override this getter to return the parameters
  List<JsonToDart> get values => [];

  String get className => names.map(firstUpperCase).join(divider);
  String get instanceName => firstLowerCase(names.last);

  // *  ---------- static ----------

  static String firstLowerCase(String input) => input[0].toLowerCase() + input.substring(1);
  static String firstUpperCase(String input) => input[0].toUpperCase() + input.substring(1);

  String dartDefine({List<String> themes = const []}) {
    final buffer = StringBuffer()..writeLine(0, comment)..writeLine(0, 'class $className {');
    if (isShared) {
      buffer..writeLine(1, comment)..writeLine(1, '${dartConstructor()};');
    } else {
      for (final theme in themes) {
        final initializers = values.where((value) => !value.isShared).map((value) {
          return '${value.instanceName} = ${value.dartConstructor(theme)}';
        });
        buffer..writeLine(1, comment)..writeLine(1, '${dartConstructor(theme)}: ${initializers.join(", ")};');
      }
    }
    buffer.writeln();
    for (final value in values) {
      buffer..writeLine(1, value.comment)..writeLine(1, value.dartParameter);
    }
    buffer
      ..writeLine(0, '}')
      ..writeln();

    for (final value in values) {
      buffer.write(value.dartDefine(themes: themes));
    }
    return buffer.toString();
  }

  String dartConstructor([String? theme]) {
    if (isShared) {
      return 'const $className()';
    } else {
      assert(theme != null);
      return 'const $className.${firstLowerCase(theme!)}()';
    }
  }

  String dartInstance({required String theme}) {
    return '$instanceName = const ${dartConstructor(theme)}';
  }

  String get finalOrStaticConst => isShared ? 'static const' : 'final';

  String get dartParameter {
    if (isShared) {
      return '$finalOrStaticConst $instanceName = ${dartConstructor()};';
    } else {
      return '$finalOrStaticConst $className $instanceName;';
    }
  }
}

enum ObjectType {
  collection,
  color,
}

String fullClassName(Iterable<String> names) => names.join(divider);

/// The color palette containing everything
class ColorPalette extends JsonToDart {
  /// [ColorPalette] from Json
  ColorPalette.fromJson({required Json json, List<String> parentName = const []})
      : collections = (json['values'] as List)
            .map((collection) => JsonToDart.fromJson(json: collection as Json, parentName: [...parentName, json['name'] as String]))
            .toList(),
        themes = List<String>.from(json['themes'] as List),
        super(json: json, parentName: parentName);

  /// Shared
  final List<JsonToDart> collections;

  @override
  List<JsonToDart> get values => collections;

  final List<String> themes;

  @override
  String dartDefine({List<String> themes = const []}) {
    return super.dartDefine(themes: this.themes);
  }
}

class Collection extends JsonToDart {
  Collection.fromJson({required Json json, Names parentName = const []})
      : collections = (json['values'] as List)
            .map<JsonToDart>((value) => JsonToDart.fromJson(json: value as Json, parentName: [...parentName, json['name'] as String]))
            .toList(),
        super(json: json, parentName: parentName);

  final List<JsonToDart> collections;

  @override
  List<JsonToDart> get values => collections;
}

class Value<T> extends JsonToDart {
  Value.fromJson({required Json json, Names parentName = const []})
      : themedValues = (json['values'] as Map<String, dynamic>).map((key, value) => MapEntry(key, ThemedValue<T>(json))),
        super(json: json, parentName: parentName);

  final Map<String, ThemedValue> themedValues;
}

class ThemedValue<T> {
  ThemedValue(Json json)
      : import = List<String>.from(json['import'] as List),
        value = json['value'] as T?;

  final List<String> import;

  final T? value;
}

/// So no overlap with flutter [Colour]
class Color extends JsonToDart {
  Color.fromJson({required Json json, Names parentName = const []})
      : color = json['value'] as String,
        super(json: json, parentName: parentName);

  final String color;

  @override
  String get className => 'Color';

  @override
  String dartDefine({List<String> themes = const []}) {
    return '';
  }

  @override
  String dartConstructor([String? theme]) {
    return 'const Color(0x$color)';
  }
}

extension StringBufferExtension on StringBuffer {
  static String indent(int indent) => '\t' * indent;

  void writeLine(int indentValue, String line) {
    writeln(indent(indentValue) + line);
  }
}
