part of themed_color_palette;

/// All the value types.
enum ValueType {
  /// Color.
  color,

  /// Double.
  doubleNumber,

  /// Int.
  intNumber,

  /// Font Weight.
  fontWeight,

  /// Boolean.
  boolean,

  /// Brightness.
  brightness
}

/// Value type extension.
extension ValueTypeExtension on ValueType {
  /// Get the [ValueType] from the [String].
  static ValueType fromString(String type) {
    switch (type) {
      case 'double':
        return ValueType.doubleNumber;
      case 'int':
        return ValueType.intNumber;
      case 'fontWeight':
        return ValueType.fontWeight;
      case 'bool':
        return ValueType.boolean;
      case 'brightness':
        return ValueType.brightness;
      case 'color':
        return ValueType.color;
      default:
        throw UnsupportedError('Unsupported value type: $type');
    }
  }
}
