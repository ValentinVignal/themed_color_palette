import 'dart:convert' as dart_convert;
import 'package:build/build.dart';

/// TODO(Valentin):
/// - [x] Generate the file
/// - [x] Handle colors
/// - [x] Nested collection
/// - [x] Imports
/// - [x] doubles
/// - [x] int
/// - [x] font weight
/// - [x] color with opacity
/// // - [x] Save intermediate variables
/// - [x] Save variable in global map instead
/// - [x] imported color wih opacity
/// - [x] Static consts

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

mixin Themes {
  static final List<String> themes = [];
  static String get defaultTheme => themes.first;
}

final allValues = <String, Value>{};

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

  /// Override this getter to add static constant values
  List<SharedValue> get constants => [];

  /// ```dart
  /// r"ParentName1$ParentName2$ObjectName";
  /// ```
  String get className => names.map(firstUpperCase).join(divider);

  /// ```dart
  /// 'objectName';
  /// ```
  String get instanceName => firstLowerCase(names.last);

  // *  ---------- static ----------

  static String firstLowerCase(String input) => input[0].toLowerCase() + input.substring(1);
  static String firstUpperCase(String input) => input[0].toUpperCase() + input.substring(1);

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
        return '${value.instanceName} = ${value.dartConstructor(theme)}';
      });

      buffer
        ..writeLine(1, comment)
        ..writeLine(
          1,
          [dartConstructor(theme), if (initializers.isNotEmpty) ': ', initializers.join(', '), ';'].join(),
        );
    }
    // Shared attributes
    if (constants.isNotEmpty) {
      buffer.writeln();
      for (final value in constants) {
        buffer..writeLine(1, value.comment)..writeLine(1, value.dartParameter);
      }
    }

    // Themed attributes
    buffer.writeln();
    for (final value in values) {
      buffer..writeLine(1, value.comment)..writeLine(1, value.dartParameter);
    }
    // Ends the class
    buffer
      ..writeLine(0, '}')
      ..writeln()
      ..writeln();
    // Instance the used values
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
  ColorPalette.fromJson({required Json json}) : super(json: json, parentName: const []) {
    Themes.themes.addAll(List<String>.from(json['themes'] as List));
    baseName = names.first;
    sharedValues.addAll((json['constants'] as List).map((value) => SharedValue(json: value as Json, parentName: [sharedBaseName])).toList());
    collections.addAll((json['collections'] as List).map((collection) => JsonToDart.fromJson(json: collection as Json, parentName: [baseName])).toList());
  }

  static String baseName = '';

  static const sharedBaseName = '.shared';

  final List<JsonToDart> collections = [];

  final List<SharedValue> sharedValues = [];

  @override
  List<JsonToDart> get values => collections;

  @override
  List<SharedValue> get constants => sharedValues;
}

class Collection extends JsonToDart {
  Collection.fromJson({required Json json, Names parentName = const []}) : super(json: json, parentName: parentName) {
    collections.addAll(
        (json['values'] as List).map<JsonToDart>((value) => JsonToDart.fromJson(json: value as Json, parentName: [...parentName, names.last])).toList());
  }

  final List<JsonToDart> collections = [];

  @override
  List<JsonToDart> get values => collections;
}

enum ValueType {
  color,
  doubleNumber,
  intNumber,
  fontWeight,
}

extension ValueTypeExtension on ValueType {
  static ValueType fromString(String type) {
    switch (type) {
      case 'double':
        return ValueType.doubleNumber;
      case 'int':
        return ValueType.intNumber;
      case 'fontWeight':
        return ValueType.fontWeight;
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
    return (themedValues[theme] ?? themedValues[Themes.themes.first]!).dartConstructor;
  }

  @override
  String dartDefine() => '';
}

class SharedValue extends JsonToDart {
  SharedValue({required Json json, Names parentName = const []})
      : value = Value.fromJson(
          value: json['value'],
          path: [...parentName, json['name'] as String],
          theme: null,
          type: ValueTypeExtension.fromString(json['type'] as String),
        ),
        type = ValueTypeExtension.fromString(json['type'] as String),
        super(json: json, parentName: parentName);

  final Value value;

  final ValueType type;

  @override
  String get className => value.className;

  @override
  String dartConstructor(String theme) => throw Exception('This should not have been called');

  @override
  String dartDefine() => throw Exception('This should not have been called');

  @override
  String get dartParameter {
    return 'static const $instanceName = ${value.dartConstructor}';
  }
}

abstract class Value {
  Value({
    required dynamic value,
    required this.path,
    required this.theme,
  }) : import = List<String>.from((value is Map ? value['import'] as List? : null) ?? []) {
    allValues[_allValuesKey(path: path, theme: theme)] = this;
  }

  // The value key when the value is saved
  static String _allValuesKey({required Names path, required String? theme}) {
    final _pathString = path.map(JsonToDart.firstUpperCase).join(divider);
    if (theme == null) {
      // This is a shared value
      return _pathString;
    } else {
      // This is a themed value
      return '$_pathString.${JsonToDart.firstLowerCase(theme)}';
    }
  }

  // The value key when the value is imported
  static String _allValuesImportKey({required Names path, required String? theme}) {
    final isShared = path.first == ColorPalette.sharedBaseName;
    final _pathString = [if (!isShared) ColorPalette.baseName, ...path].map(JsonToDart.firstUpperCase).join(divider);
    if (isShared) {
      // This is a shared value
      return _pathString;
    } else {
      // This is a themed value
      return '$_pathString.${JsonToDart.firstLowerCase(theme!)}';
    }
  }

  static Value fromJson({
    required dynamic value,
    required ValueType type,
    required Names path,
    required String? theme,
  }) {
    switch (type) {
      case ValueType.doubleNumber:
        return Double.fromJson(value: value, path: path, theme: theme);
      case ValueType.intNumber:
        return Int.fromJson(value: value, path: path, theme: theme);
      case ValueType.fontWeight:
        return FontWeight.fromJson(fontWeight: value, path: path, theme: theme);
      case ValueType.color:
      default:
        return Color.fromJson(color: value, path: path, theme: theme);
    }
  }

  final Names path;

  /// If `null` it means this is a shared value
  final String? theme;

  final List<String> import;

  bool get isImported => import.isNotEmpty;

  String get dartConstructor;

  String get className;
}

class Color extends Value {
  Color.fromJson({
    required dynamic color,
    required Names path,
    required String? theme,
  })  : color = color is String
            ? color
            : (allValues[Value._allValuesImportKey(
                path: List<String>.from((color as Map)['import'] as List),
                theme: theme,
              )]! as Color)
                .color,
        opacity = color is Map
            ? (color['withOpacity'] is Map
                ? (allValues[Value._allValuesImportKey(
                    path: List<String>.from((color['withOpacity'] as Map)['import'] as List),
                    theme: theme,
                  )]! as Double)
                    .value
                : color['withOpacity'] as double?)
            : null,
        super(value: color, path: path, theme: theme);

  @override
  String get className => 'Color';

  final String color;

  final double? opacity;

  String get value {
    if (opacity == null) {
      return color;
    }
    return opacityDoubleToHexadecimal(opacity!) + color.substring(2);
  }

  static String opacityDoubleToHexadecimal(double value) => (255 * value).round().toRadixString(16);

  @override
  String get dartConstructor {
    return 'const Color(0x$value)';
  }
}

class Double extends Value {
  Double.fromJson({
    required dynamic value,
    required Names path,
    required String? theme,
  })  : value = value is double
            ? value
            : (allValues[Value._allValuesImportKey(
                path: List<String>.from((value as Map)['import'] as List),
                theme: theme,
              )]! as Double)
                .value,
        super(value: value, path: path, theme: theme);

  @override
  String get className => 'double';

  final double value;

  @override
  String get dartConstructor {
    return value.toString();
  }
}

class Int extends Value {
  Int.fromJson({
    required dynamic value,
    required Names path,
    required String? theme,
  })  : value = value is int
            ? value
            : (allValues[Value._allValuesImportKey(
                path: List<String>.from((value as Map)['import'] as List),
                theme: theme,
              )]! as Int)
                .value,
        super(value: value, path: path, theme: theme);

  @override
  String get className => 'int';

  final int value;

  @override
  String get dartConstructor {
    return value.toString();
  }
}

enum FontWeightEnum {
  w100,
  w200,
  w300,
  w400,
  w500,
  w600,
  w700,
  w800,
  w900,
}

extension FontWeightEnumExtension on FontWeightEnum {
  static FontWeightEnum fromString(String string) {
    switch (string) {
      case 'w100':
      case 'thin':
        return FontWeightEnum.w100;
      case 'w200':
      case 'extraLight':
        return FontWeightEnum.w200;
      case 'w300':
      case 'light':
        return FontWeightEnum.w300;
      case 'w500':
      case 'medium':
        return FontWeightEnum.w500;
      case 'w600':
      case 'semiBold':
        return FontWeightEnum.w600;
      case 'w700':
      case 'bold':
        return FontWeightEnum.w700;
      case 'w800':
      case 'extraBold':
        return FontWeightEnum.w800;
      case 'w900':
      case 'black':
        return FontWeightEnum.w900;
      case 'w400':
      case 'normal':
      case 'regular':
      case 'plain':
      default:
        return FontWeightEnum.w400;
    }
  }

  String get string {
    switch (this) {
      case FontWeightEnum.w100:
        return 'w100';
      case FontWeightEnum.w200:
        return 'w200';
      case FontWeightEnum.w300:
        return 'w300';
      case FontWeightEnum.w400:
        return 'w400';
      case FontWeightEnum.w500:
        return 'w500';
      case FontWeightEnum.w600:
        return 'w600';
      case FontWeightEnum.w700:
        return 'w700';
      case FontWeightEnum.w800:
        return 'w800';
      case FontWeightEnum.w900:
        return 'w900';
    }
  }
}

class FontWeight extends Value {
  FontWeight.fromJson({
    required dynamic fontWeight,
    required Names path,
    required String? theme,
  })  : fontWeight = fontWeight is String
            ? FontWeightEnumExtension.fromString(fontWeight)
            : (allValues[Value._allValuesImportKey(
                path: List<String>.from((fontWeight as Map)['import'] as List),
                theme: theme,
              )]! as FontWeight)
                .fontWeight,
        super(value: fontWeight, path: path, theme: theme);

  @override
  String get className => 'FontWeight';

  final FontWeightEnum fontWeight;

  @override
  String get dartConstructor {
    return 'FontWeight.${fontWeight.string}';
  }
}

extension StringBufferExtension on StringBuffer {
  static String indent(int indent) => '\t' * indent;

  void writeLine(int indentValue, String line) {
    writeln(indent(indentValue) + line);
  }
}
