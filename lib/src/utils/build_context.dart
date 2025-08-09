import 'package:themed_color_palette/src/utils/utils.dart';

/// {@template valentin_vignal.themed_color_palette.build_context}
/// Context given to a [JsonToDart] constructor when constructed.
/// {@endtemplate}
class BuildContext {
  /// {@macro valentin_vignal.themed_color_palette.build_context}
  BuildContext({
    this.names = const [],
  }) {
    // Check the names
    // Only check the last one as the previous ones have already been checked
    if (!camelCaseRegExp.hasMatch(names.last)) {
      errors.add(
        'Variable "${names.last}" is not in camelCase (location: $names)',
      );
    }
  }

  /// The name of the object.
  ///
  /// Names of the current object.
  /// ```dart
  /// ['ParentName1', 'ParentName2', 'ObjectName'];
  /// ```
  final List<String> names;

  @override
  String toString() {
    return 'Context(names: "${names.join(divider)}")';
  }

  /// The base name for themed values.
  String get baseName => names.first.firstUpperCase;

  /// ```dart
  /// 'objectName';
  /// ```
  String get name => names.last.firstLowerCase;

  /// ```dart
  /// r"ParentName1$ParentName2$ObjectName";
  /// ```
  String get className => names
      .map(
        (name) => name.firstUpperCase,
      )
      .join(divider);

  /// Extends the current context with new values.
  BuildContext extendsWith({
    String name = '',
  }) {
    return BuildContext(
      names: [
        ...names,
        if (name.isNotEmpty) name,
      ],
    );
  }

  /// Copy with method.
  BuildContext copyWith({
    List<String> names = const [],
  }) {
    return BuildContext(
      names: names.isNotEmpty ? names : this.names,
    );
  }
}
