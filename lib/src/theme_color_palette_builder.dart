import 'dart:convert' as dart_convert;
import 'package:build/build.dart';

/// TODO(Valentin):
/// - [x] Generate the file
/// - [x] Handle colors
/// - [x] Nested collection
/// - [x] Imports
/// - [x] doubles
/// - [x] int
/// - [ ] font weight
/// - [ ] color option
/// - [x] Save intermediate variables

// ! -------------------- Types --------------------

/// A Json
typedef Json = Map<String, dynamic>;

/// A List of Json
typedef Jsons = List<Json>;

typedef Names = List<String>;

// ! -------------------- Builder --------------------

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

// ! -------------------- Static --------------------

const divider = r'$';

const themeDivider = r'$$';

mixin Themes {
  static final List<String> themes = [];
  static String get defaultTheme => themes.first;
}

// ! -------------------- Objects --------------------

enum ObjectType {
  collection,
  value,
}

extension ObjectTypeExtension on ObjectType {
  static ObjectType fromString(String? type) {
    switch (type) {
      case 'collection':
      case '':
      case null:
        return ObjectType.collection;
      default:
        return ObjectType.value;
    }
  }
}

/// JsonToDart
///
/// Example with
/// ```dart
/// parentName = ['ParentName1', 'ParentName2'];
/// name = ['ObjectName'];
/// ```
abstract class JsonToDart {
  /// Get the common parameters
  JsonToDart({required Json json, required Names parentName})
      : _names = [...parentName, json['name'] as String],
        description = json['description'] as String? ?? '';

  factory JsonToDart.fromJson({required Json json, List<String> parentName = const []}) {
    final type = ObjectTypeExtension.fromString(json['type'] as String?);
    switch (type) {
      case ObjectType.collection:
        return Collection.fromJson(json: json, parentName: parentName);
      case ObjectType.value:
        return ThemedValue(json: json, parentName: parentName);
    }
  }

  // *  ---------- Attributes ----------

  /// ```dart
  /// ['ParentName1', 'ParentName2', 'ObjectName'];
  /// ```
  final Names _names;

  Names get names => _names;

  final String description;

  String get comment {
    return description.split('\n').map((descriptionBlock) => '/// $descriptionBlock').join('\n');
  }

  /// Override this getter to return the parameters
  List<JsonToDart> get values => [];

  /// ```dart
  /// r"ParentName1$ParentName2$ObjectName";
  /// ```
  String get className => names.map(firstUpperCase).join(divider);

  /// ```dart
  /// r"_parentName1$ParentName2$ObjectName";
  /// ```
  String get constantNameBase => '_${firstLowerCase(names.map(firstUpperCase).join(divider))}';

  String constantName(String theme) => '$constantNameBase$themeDivider${firstLowerCase(theme)}';

  /// ```dart
  /// 'objectName';
  /// ```
  String get instanceName => firstLowerCase(names.last);

  // *  ---------- static ----------

  static String firstLowerCase(String input) => input[0].toLowerCase() + input.substring(1);
  static String firstUpperCase(String input) => input[0].toUpperCase() + input.substring(1);

  static String constantNameFromPath({required Names path, required String theme}) {
    return '_${firstLowerCase([ColorPalette.baseName, ...path].map(firstUpperCase).join(divider))}$themeDivider${firstLowerCase(theme)}';
  }

  /// ```dart
  /// /// Description
  /// class ParentName1$ParentName2$ObjectName {
  ///   /// Description
  ///   const ParentName1$ParentName2$ObjectName.theme1();
  ///   /// Description
  ///   const ParentName1$ParentName2$ObjectName.theme2();
  /// }
  /// ```
  String dartDefine() {
    final buffer = StringBuffer()
      ..writeLine(0, '// -------------------- $className --------------------')
      ..writeln()
      ..writeLine(0, comment)
      ..writeLine(0, 'class $className {');
    for (final theme in Themes.themes) {
      final initializers = values.map((value) {
        return '${value.instanceName} = ${value.constantName(theme)}';
      });

      buffer
        ..writeLine(1, comment)
        ..writeLine(
          1,
          [dartConstructor(theme), if (initializers.isNotEmpty) ': ', initializers.join(', '), ';'].join(),
        );
    }
    buffer.writeln();
    for (final value in values) {
      buffer..writeLine(1, value.comment)..writeLine(1, value.dartParameter);
    }
    buffer
      ..writeLine(0, '}')
      ..writeln();

    for (final theme in Themes.themes) {
      buffer.writeLine(0, 'const ${constantName(theme)} = ${dartConstructor(theme)}');
    }
    buffer..writeln()..writeln();

    for (final value in values) {
      buffer.write(value.dartDefine());
    }
    return buffer.toString();
  }

  /// ```dart
  /// const ParentName1$ParentName2$ObjectName.theme()
  /// ```
  String dartConstructor(String theme) {
    return 'const $className.${firstLowerCase(theme)}()';
  }

  /// ```dart
  /// objectName = const ParentName1$ParentName2$ObjectName.theme()
  /// ```
  String dartInstance(String theme) {
    return '$instanceName = ${dartConstructor(theme)}';
  }

  /// ```dart
  /// final ParentName1$ParentName2$ObjectName objectName;
  /// ```
  String get dartParameter {
    return 'final $className $instanceName;';
  }
}

/// The color palette containing everything
class ColorPalette extends JsonToDart {
  /// [ColorPalette] from Json
  ColorPalette.fromJson({required Json json, List<String> parentName = const []}) : super(json: json, parentName: parentName) {
    Themes.themes.addAll(List<String>.from(json['themes'] as List));
    baseName = names.first;
    collections.addAll((json['collections'] as List)
        .map((collection) => JsonToDart.fromJson(json: collection as Json, parentName: [...parentName, json['name'] as String]))
        .toList());
  }

  // /// Shared
  final List<JsonToDart> collections = [];

  static String baseName = '';

  @override
  List<JsonToDart> get values => collections;
}

class Collection extends JsonToDart {
  Collection.fromJson({required Json json, Names parentName = const []}) : super(json: json, parentName: parentName) {
    collections.addAll((json['values'] as List)
        .map<JsonToDart>((value) => JsonToDart.fromJson(json: value as Json, parentName: [...parentName, json['name'] as String]))
        .toList());
  }

  final List<JsonToDart> collections = [];

  @override
  List<JsonToDart> get values => collections;
}

enum ValueType {
  color,
  doubleNumber,
  intNumber,
}

extension ValueTypeExtension on ValueType {
  static ValueType fromString(String type) {
    switch (type) {
      case 'double':
        return ValueType.doubleNumber;
      case 'int':
        return ValueType.intNumber;
      case 'color':
      default:
        return ValueType.color;
    }
  }
}

class ThemedValue extends JsonToDart {
  ThemedValue({required Json json, Names parentName = const []})
      : themedValues = (json['values'] as Map<String, dynamic>).map(
          (key, value) => MapEntry(
            key,
            Value.fromJson(
              value: _themedValueFromJson(json: json['values'] as Json, theme: key),
              path: [...parentName, json['name'] as String],
              theme: key,
              type: ValueTypeExtension.fromString(json['type'] as String),
            ),
          ),
        ),
        type = ValueTypeExtension.fromString(json['type'] as String),
        super(json: json, parentName: parentName);

  static T _themedValueFromJson<T>({required Json json, required String theme}) => (json[theme] ?? json[Themes.defaultTheme]) as T;

  final Map<String, Value> themedValues;

  final ValueType type;

  @override
  String get className => themedValues.values.first.className;

  @override
  String dartConstructor(String theme) {
    final _value = themedValues[theme] ?? themedValues[Themes.themes.first]!;

    if (_value.isImported) {
      return JsonToDart.constantNameFromPath(path: _value.import, theme: theme);
    }
    return _value.dartConstructor;
  }

  @override
  String dartDefine() {
    final buffer = StringBuffer();
    for (final theme in Themes.themes) {
      buffer.writeLine(0, 'const ${constantName(theme)} = ${dartConstructor(theme)};');
    }
    buffer..writeln()..writeln();
    return buffer.toString();
  }
}

abstract class Value {
  Value({
    required dynamic value,
    required this.path,
    required this.theme,
  }) : import = List<String>.from((value is Map ? value['import'] as List? : null) ?? []);

  static Value fromJson({
    required dynamic value,
    required ValueType type,
    required Names path,
    required String theme,
  }) {
    switch (type) {
      case ValueType.doubleNumber:
        return Double.fromJson(value: value, path: path, theme: theme);
      case ValueType.intNumber:
        return Int.fromJson(value: value, path: path, theme: theme);
      case ValueType.color:
      default:
        return Color.fromJson(color: value, path: path, theme: theme);
    }
  }

  final Names path;
  final String theme;

  final List<String> import;

  bool get isImported => import.isNotEmpty;

  String get dartConstructor;

  String get className;

  String get importedValue {
    final _class = import.sublist(0, import.length - 1).map(JsonToDart.firstUpperCase).join(divider);
    final _attribute = JsonToDart.firstLowerCase(import.last);
    return 'const $_class.${JsonToDart.firstLowerCase(theme)}().$_attribute';
  }
}

class Color extends Value {
  Color.fromJson({
    required dynamic color,
    required Names path,
    required String theme,
  })  : color = color is String ? color : null,
        super(value: color, path: path, theme: theme);

  @override
  String get className => 'Color';

  final String? color;

  @override
  String get dartConstructor {
    return 'const Color(0x$color)';
  }
}

class Double extends Value {
  Double.fromJson({required dynamic value, required Names path, required String theme})
      : value = value is double ? value : null,
        super(value: value, path: path, theme: theme);

  @override
  String get className => 'double';

  final double? value;

  @override
  String get dartConstructor {
    return value.toString();
  }
}

class Int extends Value {
  Int.fromJson({required dynamic value, required Names path, required String theme})
      : value = value is int ? value : null,
        super(value: value, path: path, theme: theme);

  @override
  String get className => 'int';

  final int? value;

  @override
  String get dartConstructor {
    return value.toString();
  }
}

extension StringBufferExtension on StringBuffer {
  static String indent(int indent) => '\t' * indent;

  void writeLine(int indentValue, String line) {
    writeln(indent(indentValue) + line);
  }
}
