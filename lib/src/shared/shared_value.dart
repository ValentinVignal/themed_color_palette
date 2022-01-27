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

  /// Shared value is a single value, so 
  @override
  String get className => value.className;

  @override
  String get name => names.sublist(1).map(JsonToDart.firstLowerCase).join(SharedValue.divider);

  @override
  String get dartParameter {
    return '''
  $comment
  static const $instanceName = ${value.dartConstructor};
''';
  }
}
