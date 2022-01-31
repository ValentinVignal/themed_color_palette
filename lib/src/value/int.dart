part of theme_color_palette;

/// Int
class Int extends Value {
  /// Int
  Int.fromJson({
    required dynamic value,
    required List<String> path,
    required String? theme,
  })  : value = value is int
            ? value
            : (allValues[Value._importToId(
                import: (value as Map)['import'] as String,
                theme: theme,
              )]! as Int)
                .value,
        super(value: value, path: path, theme: theme);

  @override
  String get className => 'int';

  /// Value
  final int value;

  @override
  String get dartConstructor {
    return value.toString();
  }
}
