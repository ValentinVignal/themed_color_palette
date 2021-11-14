part of theme_color_palette;

/// Shared value
class SharedValue extends SharedJsonToDart {
  /// Shared value
  SharedValue({required Map<String, dynamic> json, List<String> names = const []})
      : value = Value.fromJson(
          value: json['.value'],
          path: names,
          theme: null,
          type: ValueTypeExtension.fromString(json['.type'] as String),
        ),
        type = ValueTypeExtension.fromString(json['.type'] as String),
        super(json: json, names: names);

  /// Divider for shared values names
  static const divider = '_';

  /// Value
  final Value value;

  /// Type
  final ValueType type;

  @override
  String get className => value.className;

  @override
  String get instanceName => names.sublist(1).map(JsonToDart.firstLowerCase).join(SharedValue.divider);

  @override
  String dartConstructor(String theme) => throw Exception('This should not have been called');

  @override
  String dartDefine() => throw Exception('This should not have been called');

  @override
  String toJsonString() => throw Exception('This should not have been called');

  @override
  String get dartParameter {
    return '''
  $comment
  static const $instanceName = ${value.dartConstructor};
''';
  }
}
