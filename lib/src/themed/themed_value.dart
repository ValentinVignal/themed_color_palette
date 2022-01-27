part of theme_color_palette;

/// Themed Value.
class ThemedValue extends ThemedJsonToDart {
  /// Themed Value.
  ThemedValue({
    required Map<String, dynamic> json,
    required BuildContext context,
  }) : super(json: json, context: context) {
    type = ValueTypeExtension.fromString(json['.type'] as String);
    final values = Map.fromEntries(json.entries.where((entry) => !entry.key.startsWith('.')));
    final defaultValue = values[Themes.defaultTheme];
    themedValues.addEntries(
      Themes.themes.map(
        (theme) => MapEntry(
          theme,
          Value.fromJson(
            value: values[theme] ?? defaultValue,
            type: type,
            path: context.names,
            theme: theme,
          ),
        ),
      ),
    );
  }

  /// Different values for each themes.
  final Map<String, Value> themedValues = {};

  /// Value type.
  late final ValueType type;

  @override
  String get className => themedValues.values.first.className;

  @override
  String dartConstructor(String theme) {
    return themedValues[theme]!.dartConstructor;
  }

  @override
  String dartDefine(DartDefineContext dartDefineContext) => '';

  @override
  String toJsonString() => instanceName;

  @override
  String fromJsonString(String value) => '$value as $className';
}
