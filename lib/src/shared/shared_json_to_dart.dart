part of themed_color_palette;

/// Shard Json to dart
abstract class SharedJsonToDart extends JsonToDart {
  /// Shard Json to dart
  SharedJsonToDart({
    required Map<String, dynamic> json,
    required BuildContext context,
  }) : super(json: json, context: context);

  /// From json constructor
  factory SharedJsonToDart.fromJson({
    required Map<String, dynamic> json,
    required BuildContext context,
  }) {
    final type = ObjectTypeExtension.fromString(json['.type'] as String?);
    switch (type) {
      case ObjectType.collection:
        return SharedCollection.fromJson(json: json, context: context);
      case ObjectType.value:
        return SharedValue(json: json, context: context);
    }
  }

  /// Override this getter to add static constant values.
  List<SharedJsonToDart> get constants => [];

  @override
  String dartParameter({required String platform});
}
