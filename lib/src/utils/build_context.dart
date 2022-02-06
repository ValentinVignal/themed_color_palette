import 'package:theme_color_palette/src/utils/utils.dart';

/// {@template valentin_vignal.theme_color_palette.build_context}
/// Context given to a [JsonToDart] constructor when constructed.
/// {@endtemplate}
class BuildContext {
  /// {@macro valentin_vignal.theme_color_palette.build_context}
  BuildContext({
    this.names = const [],
    this.platforms = const [],
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

  /// The different platforms the object is available on.
  final List<String> platforms;

  /// `true` if the object is available on all the platforms.
  bool get onAllPlatforms => setEquals(
        Themes.platforms.toSet(),
        platforms.toSet(),
      );

  /// Whether or not the object is available on the given platform.
  bool includesPlatform(String platform) {
    if (platform.isEmpty) return onAllPlatforms;
    return platforms.contains(platform);
  }

  @override
  String toString() {
    return 'Context(names: "${names.join(divider)}", platforms: $platforms)';
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
    List<String> platforms = const [],
  }) {
    final _platforms = <String>[];
    if (platforms.isEmpty) {
      _platforms.addAll(this.platforms);
    } else {
      // Check the platforms are valid.
      for (final platform in platforms) {
        if (!Themes.platforms.contains(platform)) {
          errors.add('''
Error doing:
$this
  .extendsWith($name, $platforms);
Platform $platform is not a valid platform.
The list of platforms are ${Themes.platforms}.
''');
        }
        if (!this.platforms.contains(platform)) {
          errors.add('''
Error doing:
$this
  .extendsWith($name, $platforms);
Platform $platform is not a valid platform for context $this.
''');
        } else {
          _platforms.add(platform);
        }
      }
      if (_platforms.isEmpty && Themes.platforms.isNotEmpty) {
        errors.add('''
Error doing:
$this
  .extendsWith($name, $platforms);
There is no valid platform.
''');
      }
    }

    return BuildContext(
      names: [
        ...names,
        if (name.isNotEmpty) name,
      ],
      platforms: _platforms,
    );
  }

  /// Copy with method.
  BuildContext copyWith({
    List<String> names = const [],
    List<String> platforms = const [],
  }) {
    return BuildContext(
      names: names.isNotEmpty ? names : this.names,
      platforms: platforms.isNotEmpty ? platforms : this.platforms,
    );
  }
}
