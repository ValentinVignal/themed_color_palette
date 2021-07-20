part of theme_color_palette;

/// All the value types
enum ValueType {
  /// Color
  color,

  /// Double
  doubleNumber,

  /// Int
  intNumber,

  /// Font Weight
  fontWeight,
}

/// Value type extension
extension ValueTypeExtension on ValueType {
  /// From String constructor
  static ValueType fromString(String type) {
    switch (type) {
      case 'double':
        return ValueType.doubleNumber;
      case 'int':
        return ValueType.intNumber;
      case 'fontWeight':
        return ValueType.fontWeight;
      case 'color':
      default:
        return ValueType.color;
    }
  }
}
