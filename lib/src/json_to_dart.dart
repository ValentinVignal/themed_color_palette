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
        flutterValue = json['.flutter'] as String? ?? '',
        deprecationMessage = json['.deprecated'] as String? ?? '' {
    // Check the names
    // Only check the last one as the previous ones have already been checked
    if (!camelCaseRegExp.hasMatch(names.last)) {
      errors.add('Variable "${names.last}" is not in camelCase (location: $names)');
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
  final String flutterValue;

  /// Whether or not it is private.
  bool get isPrivate => flutterValue.isNotEmpty;

  /// The Private message.
  String get privacyComment {
    assert(isPrivate, 'The object is not private');
    return '/// Use `$flutterValue` instead.';
  }

  /// If not empty, the field is deprecated and this is the deprecation message
  final String deprecationMessage;

  /// `true` if the field is deprecated.
  bool get isDeprecated => deprecationMessage.isNotEmpty;

  // *  ---------- static ----------

  /// Set the first letter of a string in lower case.
  static String firstLowerCase(String input) => input[0].toLowerCase() + input.substring(1);

  /// Set the first letter of a string in upper case.
  static String firstUpperCase(String input) => input[0].toUpperCase() + input.substring(1);

  /// The string defined in the body of the class of the parent object.
  String get dartParameter {
    return 'final $className $instanceName;';
  }
}
