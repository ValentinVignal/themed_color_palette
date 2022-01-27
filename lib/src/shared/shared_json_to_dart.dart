part of theme_color_palette;

/// Shard Json to dart
abstract class SharedJsonToDart extends JsonToDart {
  /// Shard Json to dart
  SharedJsonToDart({
    required Map<String, dynamic> json,
    required List<String> names,
  }) : super(json: json, names: names);

  /// From json constructor
  factory SharedJsonToDart.fromJson({required Map<String, dynamic> json, List<String> names = const []}) {
    final type = ObjectTypeExtension.fromString(json['.type'] as String?);
    switch (type) {
      case ObjectType.collection:
        return SharedCollection.fromJson(json: json, names: names);
      case ObjectType.value:
        return SharedValue(json: json, names: names);
    }
  }

  /// Override this getter to add static constant values.
  List<SharedJsonToDart> get constants => [];

  @override
  String get dartParameter;
}
