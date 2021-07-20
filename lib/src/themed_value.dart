part of theme_color_palette;

/// Themed Value
class ThemedValue extends JsonToDart {
  /// Themed Value
  ThemedValue({
    required Json json,
    Names parentName = const [],
  })  : themedValues = (json['values'] as Map<String, dynamic>).map(
          (key, value) => MapEntry(
            key,
            Value.fromJson(
              value: _themedValueFromJson(json: json['values'] as Json, theme: key),
              path: [...parentName, json['name'] as String],
              theme: key,
              type: ValueTypeExtension.fromString(json['type'] as String),
            ),
          ),
        ),
        type = ValueTypeExtension.fromString(json['type'] as String),
        super(json: json, parentName: parentName);

  static T _themedValueFromJson<T>({required Json json, required String theme}) => (json[theme] ?? json[Themes.defaultTheme]) as T;

  /// Different values for each themes
  final Map<String, Value> themedValues;

  /// Value type
  final ValueType type;

  @override
  String get className => themedValues.values.first.className;

  @override
  String dartConstructor(String theme) {
    return (themedValues[theme] ?? themedValues[Themes.themes.first]!).dartConstructor;
  }

  @override
  String dartDefine() => '';
}
