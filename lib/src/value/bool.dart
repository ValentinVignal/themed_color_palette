part of theme_color_palette;

/// Bool
class Bool extends Value {
  /// Bool
  Bool.fromJson({
    required dynamic value,
    required List<String> path,
    required String? theme,
  })  : value = value is bool
            ? value
            : (allValues[Value._importToId(
                import: (value as Map)['import'] as String,
                theme: theme,
              )]! as Bool)
                .value,
        super(value: value, path: path, theme: theme);

  @override
  String get className => 'bool';

  /// Bool value
  final bool value;

  @override
  String get dartConstructor {
    return value.toString();
  }
}
