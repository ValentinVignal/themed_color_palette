part of theme_color_palette;

/// {@template valentin_vignal.theme_color_palette.themed_json_to_dart}
/// Json to dart that is themed dependent.
/// {@endtemplate}
abstract class ThemedJsonToDart extends JsonToDart {
  /// {@macro valentin_vignal.theme_color_palette.themed_json_to_dart}
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
    final buffer = StringBuffer();
    for (final platform in <String>['', ...context.platforms]) {
      final isAllPlatformGenericClass = platform.isEmpty;

      buffer
        ..writeLine(
          0,
          '// -------------------- ${classNameWithPlatform(platform: platform)} --------------------',
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
      var classLine = 'class ${classNameWithPlatform(platform: platform)}';
      if (!isAllPlatformGenericClass) {
        classLine += ' implements $className';
      }
      classLine += ' {';
      buffer
        ..writeLine(0, classLine)

        /// Unnamed constructor
        ..writeLine(1, comment);

      final platformValues = values.where(
        (value) => value.context.includesPlatform(platform),
      );
      if (platformValues.isEmpty) {
        buffer.writeLine(
          1,
          'const ${classNameWithPlatform(platform: platform)}();',
        );
      } else {
        buffer.writeLine(
          1,
          'const ${classNameWithPlatform(platform: platform)}({',
        );
        for (final value in platformValues) {
          if (value.isPrivate) {
            buffer.writeLine(
              2,
              'required ${value.classNameWithPlatform(platform: platform)} ${value.context.name},',
            );
          } else {
            buffer.writeLine(2, 'required this.${value.instanceName},');
          }
        }
        if (platformValues.any((value) => value.isPrivate)) {
          buffer.writeLine(1, '}):');
          final privateValues = values.where(
            (value) =>
                value.isPrivate && value.context.includesPlatform(platform),
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
        final initializers = platformValues.map((value) {
          return '${value.instanceName} = ${value.dartConstructor(theme: theme, platform: platform)}';
        });

        buffer.writeLine(1, comment);
        if (initializers.isEmpty) {
          buffer.writeLine(
            1,
            [
              dartConstructor(theme: theme, platform: platform),
              if (initializers.isNotEmpty) ': ',
              initializers.join(', '),
              ';',
            ].join(),
          );
        } else {
          buffer.writeLine(
            1,
            dartConstructor(theme: theme, platform: platform) + ':',
          );
          for (final entry in initializers.toList().asMap().entries) {
            final initializer = entry.value +
                (entry.key == initializers.length - 1 ? ';' : ',');
            buffer.writeLine(2, initializer);
          }
        }
      }

      // fromJson constructor
      buffer
        ..writeln()
        ..writeLine(1, '/// From json.');
      final jsonInitializers = platformValues.map((value) {
        return '${value.instanceName} = json[\'${value.context.name}\'] as ${value.classNameWithPlatform(platform: platform)}';
      });
      final fromJsonConstructorLine = '${classNameWithPlatform(
        platform: platform,
      )}.fromJson(Map<String, dynamic> json)';
      if (jsonInitializers.isEmpty) {
        buffer.writeLine(1, '$fromJsonConstructorLine;');
      } else {
        buffer.writeLine(1, '$fromJsonConstructorLine:');
        for (final entry in platformValues.toList().asMap().entries) {
          final endLine = entry.key == platformValues.length - 1 ? ';' : ',';
          final value = entry.value;
          final jsonValue = 'json[\'${value.context.name}\']';
          buffer.writeLine(
            2,
            '${value.instanceName} = ${value.fromJsonString(value: jsonValue, platform: platform)}$endLine',
          );
        }
      }

      if (dartDefineContext.body != null) {
        buffer.write(dartDefineContext.body!(platform: platform));
      }

      // Themed attributes
      for (final value in platformValues) {
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
        if (!isAllPlatformGenericClass && value.context.includesPlatform('')) {
          buffer.writeLine(1, '@override');
        }
        buffer.writeLine(1, value.dartParameter(platform: platform));
      }

      // Copy with
      buffer.writeln();
      if (!isAllPlatformGenericClass) {
        buffer.writeLine(1, '@override');
      }

      buffer.writeLine(
        1,
        '${classNameWithPlatform(platform: platform)} copyWith(${platformValues.isEmpty ? ')' : ''}{',
      );
      if (platformValues.isNotEmpty) {
        for (final value in platformValues) {
          if (value.isDeprecated) {
            buffer.writeLine(2, '@Deprecated(\'${value.deprecationMessage}\')');
          }
          buffer.writeLine(
            2,
            '${value.classNameWithPlatform(platform: platform, withCovariant: true)}? ${value.context.name},',
          );
        }
        buffer.writeLine(1, '}) {');
      }
      buffer.writeLine(
        2,
        'return ${classNameWithPlatform(platform: platform)}(',
      );
      for (final value in platformValues) {
        buffer.writeLine(
          3,
          '${value.context.name}: ${value.context.name} ?? ${value.isPrivate ? '' : 'this.'}${value.instanceName},',
        );
      }

      buffer
        ..writeLine(2, ');')
        ..writeLine(1, '}')

        // copyWithJson
        ..writeln();
      if (!isAllPlatformGenericClass) {
        buffer.writeLine(1, '@override');
      }
      buffer.write('''
  /// Copy with json method.
  ${classNameWithPlatform(platform: platform)} copyWithJson([Map<String, dynamic>? json]) {
    if (json == null || json.isEmpty) {
      return this;
    }
    return copyWith(
''');
      for (final value in platformValues) {
        buffer.writeLine(
          3,
          '${value.context.name}: ${value.copyWithJsonString(value: 'json[\'${value.context.name}\']', platform: platform)},',
        );
      }

      buffer
        ..writeLine(2, ');')
        ..writeLine(1, '}')

        // toJson

        ..writeln()
        ..writeLine(1, '/// To json method.');
      if (!isAllPlatformGenericClass) {
        buffer.writeLine(1, '@override');
      }
      buffer.writeLine(1, 'Map<String, dynamic> toJson() => {');
      for (final value in platformValues) {
        buffer.writeLine(
          2,
          '\'${value.context.name}\': ${value.toJsonString()},',
        );
      }
      buffer
        ..writeLine(1, '};')

        // Ends the class
        ..writeLine(0, '}')
        ..writeln()
        ..writeln();
    }

    // Instance the used values
    for (final value in values) {
      buffer.write(value.dartDefine(const DartDefineContext()));
    }
    return buffer.toString();
  }

  /// ```dart
  /// const ParentName1$ParentName2$ObjectName.theme()
  /// ```
  String dartConstructor({required String theme, required String platform}) {
    return 'const ${classNameWithPlatform(platform: platform)}.${theme.firstLowerCase}()';
  }

  /// ```dart
  /// objectName = const ParentName1$ParentName2$ObjectName.theme()
  /// ```
  String dartInstance({required String theme, required String platform}) {
    return '$instanceName = ${dartConstructor(theme: theme, platform: platform)}';
  }

  /// ```dart
  /// final ParentName1$ParentName2$ObjectName objectName;
  /// ```
  @override
  String dartParameter({required String platform}) {
    return 'final ${classNameWithPlatform(platform: platform)} $instanceName;';
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
  String fromJsonString({required String value, required String platform});

  /// Copy with json string method.
  ///
  /// value will be a string like
  /// ```dart
  /// json['myKey']
  /// ```
  ///
  /// This method should return the string that handles this value.
  String copyWithJsonString({required String value, required String platform});
}
