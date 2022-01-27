/// {@template valentin_vignal.theme_color_palette.dart_define_context}
/// A context given to a `[JsonToDart] object when it is being defined.
/// {@endtemplate}
class DartDefineContext {
  /// {@macro valentin_vignal.theme_color_palette.dart_define_context}
  const DartDefineContext({
    this.body = '',
  });

  /// String to insert in the body of the generated class.
  final String body;
}
