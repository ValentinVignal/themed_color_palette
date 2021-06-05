import 'dart:convert' as dart_convert;
import 'package:build/build.dart';

/// TODO():
/// Imports
/// int
/// font weight
/// Value parameters
///   - Color with opacity
///   - Color add opacity

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

enum ObjectType {
  collection,
  value,
}

extension ObjectTypeExtension on ObjectType {
  static ObjectType fromString(String type) {
    switch (type) {
      case 'collection':
        return ObjectType.collection;
      default:
        return ObjectType.value;
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
      case ObjectType.value:
        return Value(json: json, parentName: parentName);
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
      // Add the themed constructors so every collection has a theme constructor that can be called during the imports
      for (final theme in themes) {
        buffer..writeLine(1, comment)..writeLine(1, '${dartConstructor(theme)};');
      }
    } else {
      for (final theme in themes) {
        final initializers = values.where((value) => !value.isShared).map((value) {
          return '${value.instanceName} = ${value.dartConstructor(theme)}';
        });

        buffer
          ..writeLine(1, comment)
          ..writeLine(
            1,
            [dartConstructor(theme), if (initializers.isNotEmpty) ': ', initializers.join(', '), ';'].join(),
          );
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
    if (theme == null) {
      assert(isShared);
      return 'const $className()';
    } else {
      return 'const $className.${firstLowerCase(theme)}()';
    }
  }

  String dartInstance({required String theme}) {
    return '$instanceName = const ${dartConstructor(theme)}';
  }

  String get dartParameter {
    if (isShared) {
      return 'final $instanceName = ${dartConstructor()};';
    } else {
      return 'final $className $instanceName;';
    }
  }
}

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

enum ValueType {
  color,
  doubleNumber,
}

extension ValueTypeExtension on ValueType {
  static ValueType fromString(String type) {
    switch (type) {
      case 'double':
        return ValueType.doubleNumber;
      case 'color':
      default:
        return ValueType.color;
    }
  }
}

class Value extends JsonToDart {
  Value({required Json json, Names parentName = const []})
      : sharedValue = json['shared'] as bool
            ? ThemedValue.fromJson(
                json: json['value'] as Json,
                type: ValueTypeExtension.fromString(json['type'] as String),
              )
            : null,
        themedValues = json['shared'] as bool
            ? {}
            : (json['values'] as Map<String, dynamic>).map((key, value) => MapEntry(
                key,
                ThemedValue.fromJson(
                  json: (json['values'] as Map<String, dynamic>)[key] as Json,
                  type: ValueTypeExtension.fromString(json['type'] as String),
                  theme: key,
                ))),
        super(json: json, parentName: parentName);

  final Map<String, ThemedValue> themedValues;

  final ThemedValue? sharedValue;

  ThemedValue themedValue([String? theme]) {
    assert(isShared || theme != null);
    if (isShared) {
      return sharedValue!;
    } else {
      return themedValues[theme]!;
    }
  }

  @override
  String get className;

  @override
  String dartConstructor([String? theme]) {
    assert(isShared || theme != null);
    final _value = themedValue(theme);

    if (_value.isImported) {
      // return dartConstructorForUnimportedValue(theme);
      return _value.importedValue;
    }
    // print('dart Constructor $this $theme $isShared ${names}');
    // return themedValue(theme).importedValue;
    return _value.dartConstructorForUnimportedValue;
  }

  @override
  String dartDefine({List<String> themes = const []}) => '';
}

abstract class ThemedValue<TypeInJson> {
  ThemedValue({required Json json, this.theme})
      : import = List<String>.from(json['import'] as List),
        value = json['value'] as TypeInJson?;

  static ThemedValue fromJson({required Json json, required ValueType type, String? theme}) {
    switch (type) {
      case ValueType.doubleNumber:
        return Double.fromJson(json: json, theme: theme);
      case ValueType.color:
      default:
        return Color.fromJson(json: json, theme: theme);
    }
  }

  final List<String> import;

  final String? theme;

  bool get isThemed => theme != null;

  bool get isImported => import.isNotEmpty;

  String get dartConstructorForUnimportedValue;

  String get importedValue {
    final _class = import.sublist(0, import.length - 1).map(JsonToDart.firstUpperCase).join(divider);
    final _attribute = JsonToDart.firstLowerCase(import.last);
    if (!isThemed) {
      return 'const $_class().$_attribute';
    }
    return 'const $_class.${JsonToDart.firstLowerCase(theme!)}().$_attribute';
  }

  final TypeInJson? value;
}

class Color extends ThemedValue<String> {
  Color.fromJson({required Json json, String? theme}) : super(json: json, theme: theme);

  @override
  String get className => 'Color';

  @override
  String get dartConstructorForUnimportedValue {
    return 'const Color(0x$value)';
  }
}

class Double extends ThemedValue<double> {
  Double.fromJson({required Json json, String? theme}) : super(json: json, theme: theme);

  @override
  String get className => 'double';

  @override
  String get dartConstructorForUnimportedValue {
    return '$value';
  }
}

extension StringBufferExtension on StringBuffer {
  static String indent(int indent) => '\t' * indent;

  void writeLine(int indentValue, String line) {
    writeln(indent(indentValue) + line);
  }
}
