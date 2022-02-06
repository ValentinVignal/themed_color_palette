part of theme_color_palette;

/// Shared value
class SharedValue extends SharedJsonToDart {
  /// Shared value
  SharedValue({
    required Map<String, dynamic> json,
    required BuildContext context,
  })  : value = Value.fromJson(
          value: json['.value'],
          path: context.names,
          theme: null,
          type: ValueTypeExtension.fromString(json['.type'] as String),
        ),
        type = ValueTypeExtension.fromString(json['.type'] as String),
        super(json: json, context: context);

  /// Divider for shared values names
  static const divider = '_';

  /// Value
  final Value value;

  /// Type
  final ValueType type;

  /// Shared value is a single value, so
  @override
  String get className => value.className;

  @override
  String get name => context.names
      .map((name) => name.firstLowerCase)
      .join(SharedValue.divider);

  @override
  String dartParameter({required String platform}) {
    return '''
  $comment
  static const $instanceName = ${value.dartConstructor};
''';
  }
}
