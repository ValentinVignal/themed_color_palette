part of theme_color_palette;

/// JsonToDart.
///
/// Example with
/// ```dart
/// parentName = ['ParentName1', 'ParentName2'];
/// name = ['ObjectName'];
/// ```
abstract class JsonToDart {
  /// Get the common parameters.
  JsonToDart({
    required Map<String, dynamic> json,
    required this.names,
  })  : description = json['.description'] as String? ?? '',
        // Those are not unnecessary parenthesis.
        // If we remove them, the linter take `?` from `String?` as a conditional operator
        // ignore: unnecessary_parenthesis
        flutterThemeValue = (json['.flutter'] as String?) {
    // Check the names
    // Only check the last one as the previous ones have already been checked
    if (!camelCaseRegExp.hasMatch(names.last)) {
      errors.add('Variable "${names.last}" is not in camelCase (location: $names)');
    }
  }

  /// From json constructor
  factory JsonToDart.fromJson({required Map<String, dynamic> json, List<String> names = const []}) {
    final type = ObjectTypeExtension.fromString(json['.type'] as String?);
    switch (type) {
      case ObjectType.collection:
        return Collection.fromJson(json: json, names: names);
      case ObjectType.value:
        return ThemedValue(json: json, names: names);
    }
  }

  // *  ---------- Attributes ----------

  /// Names of the current object.
  /// ```dart
  /// ['ParentName1', 'ParentName2', 'ObjectName'];
  /// ```
  final List<String> names;

  /// The description of the object.
  late final String description;

  /// Comment to put in the code.
  String get comment {
    return description.split('\n').map((descriptionBlock) => '/// $descriptionBlock').join('\n');
  }

  /// Override this getter to return the parameters
  List<JsonToDart> get values => [];

  /// Override this getter to add static constant values.
  List<SharedJsonToDart> get constants => [];

  /// ```dart
  /// r"ParentName1$ParentName2$ObjectName";
  /// ```
  String get className => names.map(firstUpperCase).join(divider);

  /// ```dart
  /// 'objectName';
  /// ```
  String get name => firstLowerCase(names.last);

  /// ```dart
  /// 'objectName' or '_objectName';
  /// ```
  String get instanceName {
    return (isPrivate ? '_' : '') + name;
  }

  /// The value to use in the flutter material theme.
  final String? flutterThemeValue;

  /// Whether or not it is private.
  bool get isPrivate => flutterThemeValue?.isNotEmpty ?? false;

  /// The Private message.
  String get privacyComment {
    assert(isPrivate, 'The object is not private');
    return '/// Use `${flutterThemeValue!}` instead.';
  }

  // *  ---------- static ----------

  /// Set the first letter of a string in lower case.
  static String firstLowerCase(String input) => input[0].toLowerCase() + input.substring(1);

  /// Set the first letter of a string in upper case.
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

    if (isPrivate) {
      buffer
        ..writeLine(0, '///')
        ..writeLine(0, privacyComment);
    }
    buffer
      ..writeLine(0, 'class $className {')

      /// Unnamed constructor
      ..writeLine(1, comment);
    if (values.isEmpty) {
      buffer.writeLine(1, 'const $className();');
    } else {
      buffer.writeLine(1, 'const $className({');
      for (final value in values) {
        if (value.isPrivate) {
          buffer.writeLine(2, 'required ${value.className} ${value.name},');
        } else {
          buffer.writeLine(2, 'required this.${value.instanceName},');
        }
      }
      if (values.any((value) => value.isPrivate)) {
        buffer.writeLine(1, '}):');
        final privateValues = values.where((value) => value.isPrivate);
        for (final entry in privateValues.toList().asMap().entries) {
          final initializer = '${entry.value.instanceName} = ${firstLowerCase(entry.value.names.last)}' + (entry.key == privateValues.length - 1 ? ';' : ',');
          buffer.writeLine(2, initializer);
        }
      } else {
        buffer.writeLine(1, '});');
      }
    }

    // Themed constructor.
    for (final theme in Themes.themes) {
      buffer.writeln();
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

    // fromJson constructor
    buffer
      ..writeln()
      ..writeLine(1, '/// From json.');
    final jsonInitializers = values.map((value) {
      return '${value.instanceName} = json[\'${value.name}\'] as ${value.className}';
    });
    final fromJsonConstructorLine = '$className.fromJson(Map<String, dynamic> json)';
    if (jsonInitializers.isEmpty) {
      buffer.writeLine(1, '$fromJsonConstructorLine;');
    } else {
      buffer.writeLine(1, '$fromJsonConstructorLine:');
      for (final entry in values.asMap().entries) {
        final endLine = entry.key == values.length - 1 ? ';' : ',';
        final value = entry.value;
        final jsonValue = 'json[\'${value.name}\']';
        buffer.writeLine(2, '${value.instanceName} = ${value.fromJsonString(jsonValue)}$endLine');
      }
    }

    // Shared attributes
    if (constants.isNotEmpty) {
      for (final value in constants) {
        buffer
          ..writeln()
          ..write(value.dartParameter);
      }
    }

    // Themed attributes
    for (final value in values) {
      buffer
        ..writeln()
        ..writeLine(1, value.comment);
      if (value.isPrivate) {
        buffer
          ..writeLine(1, '///')
          ..writeLine(1, value.privacyComment);
      }
      buffer.writeLine(1, value.dartParameter);
    }

    // Copy with
    buffer
      ..writeln()
      ..writeLine(1, '$className copyWith({');
    for (final value in values) {
      buffer.writeLine(2, '${value.className}? ${value.name},');
    }

    buffer
      ..writeLine(1, '}) {')
      ..writeLine(2, 'return $className(');
    for (final value in values) {
      buffer.writeLine(3, '${value.name}: ${value.name} ?? ${value.isPrivate ? '' : 'this.'}${value.instanceName},');
    }

    buffer
      ..writeLine(2, ');')
      ..writeLine(1, '}')

      // toJson

      ..writeln()
      ..writeLine(1, '/// To json method.')
      ..writeLine(1, 'Map<String, dynamic> toJson() => {');
    for (final value in values) {
      buffer.writeLine(2, '\'${value.name}\': ${value.toJsonString()},');
    }
    buffer
      ..writeLine(1, '};')

      // Ends the class
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

  /// To json string method.
  String toJsonString();

  /// From json string method.
  ///
  /// value will be a string like
  /// ```dart
  /// json['myKey']
  /// ```
  ///
  /// This method should return the string that handles this value.
  String fromJsonString(String value);
}
