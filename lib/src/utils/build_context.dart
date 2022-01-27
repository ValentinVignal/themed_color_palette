import 'package:theme_color_palette/src/utils/globals.dart';
import 'package:theme_color_palette/src/utils/set.dart';

/// {@template valentin_vignal.theme_color_palette.build_context}
/// Context given to a [JsonToDart] constructor when constructed.
/// {@endtemplate}
class BuildContext {
  /// {@macro valentin_vignal.theme_color_palette.build_context}
  const BuildContext({
    required this.names,
    required this.platforms,
  });

  /// The name of the object.
  final List<String> names;

  /// The different platforms the object is available on.
  final List<String> platforms;

  /// `true` if the object is available on all the platforms.
  bool get onAllPlatforms => setEquals(Themes.platforms.toSet(), platforms.toSet());

  @override
  String toString() {
    return 'Context{names: "${names.join(divider)}", platforms: [${platforms.join(',')}]}';
  }

  /// Extends the current context with new values.
  BuildContext extendsWith({
    required String name,
    List<String>? platforms,
  }) {
    final _platforms = <String>[];
    if (platforms == null || platforms.isEmpty) {
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
      if (_platforms.isEmpty) {
        errors.add('''
Error doing:
$this
  .extendsWith($name, $platforms);
There is no valid platform.
''');
      }
    }

    return BuildContext(
      names: [...names, name],
      platforms: _platforms,
    );
  }
}
