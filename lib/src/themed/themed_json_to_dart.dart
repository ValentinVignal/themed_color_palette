part of themed_color_palette;

/// {@template valentin_vignal.themed_color_palette.themed_json_to_dart}
/// Json to dart that is themed dependent.
/// {@endtemplate}
abstract class ThemedJsonToDart extends JsonToDart {
  /// {@macro valentin_vignal.themed_color_palette.themed_json_to_dart}
  ThemedJsonToDart({
    required Map<String, dynamic> json,
    required BuildContext context,
  }) : super(
          json: json,
          context: context,
        );

  /// From json constructor
  factory ThemedJsonToDart.fromJson({
    required Map<String, dynamic> json,
    required BuildContext context,
  }) {
    final type = ObjectTypeExtension.fromString(json['.type'] as String?);
    switch (type) {
      case ObjectType.collection:
        return ThemedCollection.fromJson(json: json, context: context);
      case ObjectType.value:
        return ThemedValue(json: json, context: context);
    }
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
  String dartDefine(DartDefineContext dartDefineContext) {
    final buffer = StringBuffer()
      ..writeLine(
        0,
        '// -------------------- $className --------------------',
      )
      ..writeln()
      ..writeLine(0, comment);
    if (isPrivate) {
      buffer
        ..writeLine(0, '///')
        ..writeLine(0, privacyComment);
    }

    if (isDeprecated) {
      buffer.writeLine(0, '@Deprecated(\'$deprecationMessage\')');
    }
    buffer
      ..writeLine(0, 'class $className extends ThemeExtension<$className> {')

      // Unnamed constructor
      ..writeLine(1, comment);

    if (values.isEmpty) {
      buffer.writeLine(
        1,
        'const $className();',
      );
    } else {
      buffer.writeLine(
        1,
        'const $className({',
      );
      for (final value in values) {
        if (value.isPrivate) {
          buffer.writeLine(
            2,
            'required ${value.className} ${value.context.name},',
          );
        } else {
          buffer.writeLine(2, 'required this.${value.instanceName},');
        }
      }
      if (values.any((value) => value.isPrivate)) {
        buffer.writeLine(1, '}):');
        final privateValues = values.where(
          (value) => value.isPrivate,
        );
        for (final entry in privateValues.toList().asMap().entries) {
          final initializer =
              '${entry.value.instanceName} = ${entry.value.context.name.firstLowerCase}' +
                  (entry.key == privateValues.length - 1 ? ';' : ',');
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
        return '${value.instanceName} = ${value.dartConstructor(theme: theme.name)}';
      });

      buffer.writeLine(1, comment);
      if (initializers.isEmpty) {
        buffer.writeLine(
          1,
          [
            dartConstructor(theme: theme.name),
            if (initializers.isNotEmpty) ': ',
            initializers.join(', '),
            ';',
          ].join(),
        );
      } else {
        buffer.writeLine(
          1,
          dartConstructor(theme: theme.name) + ':',
        );
        for (final entry in initializers.toList().asMap().entries) {
          final initializer =
              entry.value + (entry.key == initializers.length - 1 ? ';' : ',');
          buffer.writeLine(2, initializer);
        }
      }
    }

    // fromJson constructor
    buffer
      ..writeln()
      ..writeLine(1, '/// From json.');
    final fromJsonConstructorLine =
        '$className.fromJson(Map<String, dynamic> json)';
    if (values.isEmpty) {
      buffer.writeLine(1, '$fromJsonConstructorLine;');
    } else {
      buffer.writeLine(1, '$fromJsonConstructorLine:');
      for (final entry in values.toList().asMap().entries) {
        final endLine = entry.key == values.length - 1 ? ';' : ',';
        final value = entry.value;
        final jsonValue = 'json[\'${value.context.name}\']';
        buffer.writeLine(
          2,
          '${value.instanceName} = ${value.fromJsonString(value: jsonValue)}$endLine',
        );
      }
    }

    // fromYamlJson constructor
    buffer
      ..writeln()
      ..writeLine(1, '/// From yaml.');

    final fromYamlConstructorLine =
        '$className.fromYaml(Map<String, dynamic> yaml)';
    if (values.isEmpty) {
      buffer.writeLine(1, '$fromYamlConstructorLine;');
    } else {
      buffer.writeLine(1, '$fromYamlConstructorLine:');
      for (final entry in values.toList().asMap().entries) {
        final endLine = entry.key == values.length - 1 ? ';' : ',';
        final value = entry.value;
        final yamlValue = 'yaml[\'${value.context.name}\']';
        buffer.writeLine(
          2,
          '${value.instanceName} = ${value.fromYamlString(value: yamlValue)}$endLine',
        );
      }
    }

    if (dartDefineContext.body != null) {
      buffer.write(dartDefineContext.body!());
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
      if (value.isDeprecated) {
        buffer.writeLine(1, '@Deprecated(\'${value.deprecationMessage}\')');
      }
      buffer.writeLine(1, value.dartParameter());
    }

    // Copy with
    buffer
      ..writeln()
      ..writeLine(1, '@override')
      ..writeLine(
        1,
        '$className copyWith(${values.isEmpty ? ')' : ''}{',
      );
    if (values.isNotEmpty) {
      for (final value in values) {
        if (value.isDeprecated) {
          buffer.writeLine(2, '@Deprecated(\'${value.deprecationMessage}\')');
        }
        buffer.writeLine(
          2,
          'covariant ${value.className}? ${value.context.name},',
        );
      }
      buffer.writeLine(1, '}) {');
    }
    buffer.writeLine(
      2,
      'return $className(',
    );
    for (final value in values) {
      buffer.writeLine(
        3,
        '${value.context.name}: ${value.context.name} ?? ${value.isPrivate ? '' : 'this.'}${value.instanceName},',
      );
    }

    buffer
      ..writeLine(2, ');')
      ..writeLine(1, '}')

      // copyWithJson
      ..writeln()
      ..writeLine(1, '/// Copy with json.')
      ..write('''
  $className copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
''');
    for (final value in values) {
      buffer.writeLine(
        3,
        '${value.context.name}: ${value.copyWithJsonString(value: 'json[\'${value.context.name}\']')},',
      );
    }

    buffer
      ..writeLine(2, ');')
      ..writeLine(1, '}')

      // copyWithYaml
      ..writeln()
      ..writeLine(1, '/// Copy with yaml.')
      ..write('''
  $className copyWithYaml([Map<String, dynamic>? yaml]) {
    if (yaml == null || yaml.isEmpty) {
      return this;
    }
    return copyWith(
''');
    for (final value in values) {
      buffer.writeLine(
        3,
        '${value.context.name}: ${value.copyWithYamlString(value: 'yaml[\'${value.context.name}\']')},',
      );
    }
    buffer
      ..writeLine(2, ');')
      ..writeLine(1, '}')

      // toJson
      ..writeln()
      ..writeLine(1, '/// To json.')
      ..writeLine(1, 'Map<String, dynamic> toJson() => {');
    for (final value in values) {
      buffer.writeLine(
        2,
        '\'${value.context.name}\': ${value.toJsonString()},',
      );
    }
    buffer
      ..writeLine(1, '};')

      // To yaml
      ..writeln()
      ..writeLine(1, '/// To yaml.')
      ..writeLine(1, 'Map<String, dynamic> toYaml() => {');
    for (final value in values) {
      buffer.writeLine(
        2,
        '\'${value.context.name}\': ${value.toYamlString()},',
      );
    }
    buffer
      ..writeLine(1, '};')

      // lerp
      ..writeln()
      ..writeLine(1, '@override')
      ..writeLine(1, '$className lerp($className other, double t) {')
      ..writeLine(2, 'return $className(');

    for (final value in values) {
      buffer.writeLine(
        3,
        '${value.context.name}: ${value.lerp(value: 'this.${value.instanceName}', other: 'other.${value.instanceName}')},',
      );
    }

    buffer
      ..writeLine(2, ');')
      ..writeLine(1, '}')

      // Operator ==

      ..writeln()
      ..writeLine(1, '@override')
      ..writeLine(1, 'bool operator ==(Object other) {')
      ..writeLine(2, 'if (identical(this, other)) return true;')
      ..writeLine(2, 'return other is $className')
      ..writeLine(3, '&& other.runtimeType == runtimeType');
    for (final value in values) {
      buffer.writeLine(
        3,
        '&& other.${value.instanceName} == ${value.instanceName}',
      );
    }
    buffer
      ..writeLine(2, ';')
      ..writeLine(1, '}')

      // Ends the class
      ..writeLine(0, '}')
      ..writeln()
      ..writeln();

    // Instance the used values
    for (final value in values) {
      buffer.write(value.dartDefine(const DartDefineContext()));
    }
    return buffer.toString();
  }

  /// ```dart
  /// const ParentName1$ParentName2$ObjectName.theme()
  /// ```
  String dartConstructor({required String theme}) {
    return 'const $className.${theme.firstLowerCase}()';
  }

  /// ```dart
  /// objectName = const ParentName1$ParentName2$ObjectName.theme()
  /// ```
  String dartInstance({required String theme}) {
    return '$instanceName = ${dartConstructor(theme: theme)}';
  }

  /// ```dart
  /// final ParentName1$ParentName2$ObjectName objectName;
  /// ```
  @override
  String dartParameter() {
    return 'final $className $instanceName;';
  }

  /// Override this getter to return the parameters
  ///
  /// The nested values of the object.
  List<ThemedJsonToDart> get values => [];

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
  String fromJsonString({required String value});

  /// Copy with json string method.
  ///
  /// value will be a string like
  /// ```dart
  /// json['myKey']
  /// ```
  ///
  /// This method should return the string that handles this value.
  String copyWithJsonString({required String value});

  /// From yaml string method.
  ///
  /// value will be a string like
  /// ```dart
  /// yaml['myKey']
  /// ```
  ///
  /// This method should return the string that handles this value.
  String fromYamlString({required String value});

  /// Copy with yaml string method.
  ///
  /// value will be a string like
  /// ```dart
  /// yaml['myKey']
  /// ```
  ///
  /// This method should return the string that handles this value.
  String copyWithYamlString({required String value});

  /// To yaml string method.
  String toYamlString();

  /// Return the lerp method for the object.
  ///
  /// `value` is the name of the variable of the current object.
  /// `other` is the name of the variable of the other object to lerp with.
  ///
  /// `double t` is assumed to be an available parameter.
  ///
  /// ```dart
  /// value.lerp(other, t),
  /// ```
  ///
  /// or
  ///
  /// ```dart
  /// Color.lerp(value, other, t),
  /// ```
  String lerp({
    required String value,
    required String other,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is ThemedJsonToDart && other.className == className;
  }

  @override
  int get hashCode => className.hashCode;

  @override
  String toString() => 'ThemedJsonToDart(className: $className)';
}
