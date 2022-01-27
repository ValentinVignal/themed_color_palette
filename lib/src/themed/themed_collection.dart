part of theme_color_palette;

/// Themed collection.
class ThemedCollection extends ThemedJsonToDart {
  /// Themed collection from json.
  ThemedCollection.fromJson({
    required Map<String, dynamic> json,
    required BuildContext context,
  }) : super(json: json, context: context) {
    collections.addAll(
      json.entries
          .where((entry) => !entry.key.startsWith('.'))
          .map<ThemedJsonToDart>(
            (entry) => ThemedJsonToDart.fromJson(
              json: entry.value as Map<String, dynamic>,
              context: context.extendsWith(
                name: entry.key,
              ),
            ),
          )
          .toList(),
    );
  }

  /// List of sub-collections.
  final List<ThemedJsonToDart> collections = [];

  @override
  String get className => [BaseName.colorPalette, context.className].join(divider);

  @override
  List<ThemedJsonToDart> get values => collections;

  @override
  String toJsonString() {
    return '$instanceName.toJson()';
  }

  @override
  String fromJsonString(String value) {
    return '$className.fromJson($value as Map<String, dynamic>)';
  }
}
