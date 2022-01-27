part of theme_color_palette;

/// {@template valentin_vignal.theme_color_palette.themed_json_to_dart}
/// Json to dart that is themed dependent.
/// {@endtemplate}
abstract class ThemedJsonToDart extends JsonToDart {
  /// {@macro valentin_vignal.theme_color_palette.themed_json_to_dart}
  ThemedJsonToDart({
    required Map<String, dynamic> json,
    required List<String> names,
  }) : super(
          json: json,
          names: names,
        );

  /// From json constructor
  factory ThemedJsonToDart.fromJson({required Map<String, dynamic> json, List<String> names = const []}) {
    final type = ObjectTypeExtension.fromString(json['.type'] as String?);
    switch (type) {
      case ObjectType.collection:
        return ThemedCollection.fromJson(json: json, names: names);
      case ObjectType.value:
        return ThemedValue(json: json, names: names);
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
  String dartDefine(DartDefineContext context) {
    final buffer = StringBuffer()
      ..writeLine(0, '// -------------------- $className --------------------')
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
          final initializer =
              '${entry.value.instanceName} = ${JsonToDart.firstLowerCase(entry.value.names.last)}' + (entry.key == privateValues.length - 1 ? ';' : ',');
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

    if (context.body.isNotEmpty) {
      buffer.write(context.body);
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

      buffer.writeLine(1, value.dartParameter);
    }

    // Copy with
    buffer
      ..writeln()
      ..writeLine(1, '$className copyWith({');
    for (final value in values) {
      if (value.isDeprecated) {
        buffer.writeLine(2, '@Deprecated(\'${value.deprecationMessage}\')');
      }
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
      buffer.write(value.dartDefine(const DartDefineContext()));
    }
    return buffer.toString();
  }

  /// ```dart
  /// const ParentName1$ParentName2$ObjectName.theme()
  /// ```
  String dartConstructor(String theme) {
    return 'const $className.${JsonToDart.firstLowerCase(theme)}()';
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
  @override
  String get dartParameter {
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
  String fromJsonString(String value);
}
