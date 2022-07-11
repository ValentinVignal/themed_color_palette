part of themed_color_palette;

/// Double
class Double extends Value {
  /// Double
  Double.fromJson({
    required dynamic value,
    required List<String> path,
    required String? theme,
  })  : value = value is num
            ? value.toDouble()
            : (allValues[Value._importToId(
                import: (value as Map)['import'] as String,
                theme: theme,
              )]! as Double)
                .value,
        super(value: value, path: path, theme: theme);

  @override
  String get className => 'double';

  /// Value
  final double value;

  @override
  String get dartConstructor {
    return value.toString();
  }
}
