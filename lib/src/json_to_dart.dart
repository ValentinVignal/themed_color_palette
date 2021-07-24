part of theme_color_palette;

/// JsonToDart
///
/// Example with
/// ```dart
/// parentName = ['ParentName1', 'ParentName2'];
/// name = ['ObjectName'];
/// ```
abstract class JsonToDart {
  /// Get the common parameters
  JsonToDart({
    required Json json,
    required this.names,
  })  : description = json['.description'] as String? ?? '',
        flutterThemeValue = (json['.flutter'] as String?) {
    // Check the names
    // Only check the last one as the previous ones have already been checked
    if (!camelCaseRegExp.hasMatch(names.last)) {
      errors.add('Variable "${names.last}" is not in camelCase (location: $names)');
    }
  }

  /// From json constructor
  factory JsonToDart.fromJson({required Json json, List<String> names = const []}) {
    final type = ObjectTypeExtension.fromString(json['.type'] as String?);
    switch (type) {
      case ObjectType.collection:
        if (names.first == ColorPalette.sharedBaseName) {
          return SharedCollection.fromJson(json: json, names: names);
        } else {
          return Collection.fromJson(json: json, names: names);
        }
      case ObjectType.value:
        if (names.first == ColorPalette.sharedBaseName) {
          return SharedValue(json: json, names: names);
        } else {
          return ThemedValue(json: json, names: names);
        }
    }
  }

  // *  ---------- Attributes ----------

  /// Names of the current object
  /// ```dart
  /// ['ParentName1', 'ParentName2', 'ObjectName'];
  /// ```
  final Names names;

  /// The description of the object
  final String description;

  /// Comment to put in the code
  String get comment {
    return description.split('\n').map((descriptionBlock) => '/// $descriptionBlock').join('\n');
  }

  /// Override this getter to return the parameters
  List<JsonToDart> get values => [];

  /// Override this getter to add static constant values
  List<SharedJsonToDart> get constants => [];

  /// ```dart
  /// r"ParentName1$ParentName2$ObjectName";
  /// ```
  String get className => names.map(firstUpperCase).join(divider);

  /// ```dart
  /// 'objectName';
  /// ```
  String get instanceName => firstLowerCase(names.last);

  /// The value to use in the flutter material theme
  final String? flutterThemeValue;

  /// Whether or not it is deprecated
  bool get isDeprecated => flutterThemeValue?.isNotEmpty ?? false;

  /// The deprecation message
  String get deprecationDecorator {
    assert(isDeprecated, 'The object is not deprecated');
    return "@Deprecated('Use ${flutterThemeValue!} instead')";
  }

  // *  ---------- static ----------

  /// Set the first letter of a string in lower case
  static String firstLowerCase(String input) => input[0].toLowerCase() + input.substring(1);

  /// Set the first letter of a string in upper case
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
      ..writeLine(0, comment);

    if (isDeprecated) {
      buffer.writeLine(0, deprecationDecorator);
    }
    buffer.writeLine(0, 'class $className {');
    for (final theme in Themes.themes) {
      final initializers = values.map((value) {
        return '${value.instanceName} = ${value.dartConstructor(theme)}';
      });

      buffer.writeLine(1, comment);
      if (initializers.isEmpty) {
        buffer.writeLine(
          1,
          [dartConstructor(theme), if (initializers.isNotEmpty) ': ', initializers.join(', '), ';'].join(),
        );
      } else {
        buffer.writeLine(1, dartConstructor(theme) + ':');
        for (final entry in initializers.toList().asMap().entries) {
          final initializer = entry.value + (entry.key == initializers.length - 1 ? ';' : ',');
          buffer.writeLine(2, initializer);
        }
      }
    }
    // Shared attributes
    if (constants.isNotEmpty) {
      buffer.writeln();
      for (final value in constants) {
        // buffer..writeLine(1, value.comment)..writeLine(1, value.dartParameter);
        buffer.write(value.dartParameter);
      }
    }

    // Themed attributes
    buffer.writeln();
    for (final value in values) {
      buffer.writeLine(1, value.comment);
      if (value.isDeprecated) {
        buffer.writeLine(1, value.deprecationDecorator);
      }
      buffer.writeLine(1, value.dartParameter);
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
