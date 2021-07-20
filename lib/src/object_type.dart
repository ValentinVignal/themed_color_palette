part of theme_color_palette;

/// Different object types
enum ObjectType {
  /// Collection
  collection,

  /// Value
  value,
}

/// Object type extension
extension ObjectTypeExtension on ObjectType {
  /// From Json
  static ObjectType fromString(String? type) {
    switch (type) {
      case 'collection':
      case '':
      case null:
        return ObjectType.collection;
      default:
        return ObjectType.value;
    }
  }
}
