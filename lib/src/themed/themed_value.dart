part of theme_color_palette;

/// Themed Value.
class ThemedValue extends ThemedJsonToDart {
  /// Themed Value.
  ThemedValue({
    required Map<String, dynamic> json,
    required BuildContext context,
  }) : super(json: json, context: context) {
    type = ValueTypeExtension.fromString(json['.type'] as String);
    final values = Map.fromEntries(
      json.entries.where((entry) => !entry.key.startsWith('.')),
    );
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
  String dartConstructor({required String theme, required String platform}) {
    return themedValues[theme]!.dartConstructor;
  }

  @override
  String dartDefine(DartDefineContext dartDefineContext) => '';

  @override
  String toJsonString() => instanceName;

  @override
  String fromJsonString({
    required String value,
    required String platform,
  }) =>
      '$value as $className';

  @override
  String copyWithJsonString({
    required String value,
    required String platform,
  }) =>
      '$value as $className?';

  @override
  String classNameWithPlatform({
    required String platform,
    bool withCovariant = false,
  }) {
    return className;
  }

  String _castFromYamlString({required String value, required bool nullable}) {
    return themedValues.values.first
        .castFromYamlString(value: value, nullable: nullable);
  }

  @override
  String fromYamlString({
    required String value,
    required String platform,
  }) =>
      _castFromYamlString(value: value, nullable: false);

  @override
  String copyWithYamlString({
    required String value,
    required String platform,
  }) =>
      _castFromYamlString(value: value, nullable: true);

  @override
  String toYamlString() =>
      themedValues.values.first.castToYamlString(value: instanceName);
}
