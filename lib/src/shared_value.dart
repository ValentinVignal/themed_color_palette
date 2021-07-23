part of theme_color_palette;

/// Shared value
class SharedValue extends JsonToDart {
  /// Shared value
  SharedValue({required Json json, Names parentName = const []})
      : value = Value.fromJson(
          value: json['.value'],
          path: [...parentName, json['.name'] as String],
          theme: null,
          type: ValueTypeExtension.fromString(json['.type'] as String),
        ),
        type = ValueTypeExtension.fromString(json['.type'] as String),
        super(json: json, parentName: parentName);

  /// Value
  final Value value;

  /// Type
  final ValueType type;

  @override
  String get className => value.className;

  @override
  String dartConstructor(String theme) => throw Exception('This should not have been called');

  @override
  String dartDefine() => throw Exception('This should not have been called');

  @override
  String get dartParameter {
    return 'static const $instanceName = ${value.dartConstructor};';
  }
}
