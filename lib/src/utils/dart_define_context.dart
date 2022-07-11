/// A callback to create the body of the generated class.
typedef DartDefineContextBody = String Function({required String platform});

/// {@template valentin_vignal.themed_color_palette.dart_define_context}
/// A context given to a `[JsonToDart] object when it is being defined.
/// {@endtemplate}
class DartDefineContext {
  /// {@macro valentin_vignal.themed_color_palette.dart_define_context}
  const DartDefineContext({
    this.body,
  });

  /// String to insert in the body of the generated class.
  final DartDefineContextBody? body;
}
