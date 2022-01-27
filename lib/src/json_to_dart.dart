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
    required BuildContext context,
  })  : description = json['.description'] as String? ?? '',
        // Those are not unnecessary parenthesis.
        // If we remove them, the linter take `?` from `String?` as a conditional operator
        flutterValue = json['.flutter'] as String? ?? '',
        deprecationMessage = json['.deprecated'] as String? ?? '',
        context = context.extendsWith(platforms: List<String>.from(json['.platforms'] as List? ?? []));

  /// The context of the current object from its parents.
  final BuildContext context;

  /// The description of the object.
  final String description;

  /// Comment to put in the code.
  String get comment {
    return description.split('\n').map((descriptionBlock) => '/// $descriptionBlock').join('\n');
  }

  /// The class name of the object.
  String get className;

  /// ```dart
  /// 'objectName';
  /// ```
  String get name => context.name;

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

  /// The string defined in the body of the class of the parent object.
  String get dartParameter {
    return 'final ${context.className} $instanceName;';
  }
}
