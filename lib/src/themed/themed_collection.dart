part of theme_color_palette;

/// Collection.
class ThemedCollection extends ThemedJsonToDart {
  /// Collection from json
  ThemedCollection.fromJson({
    required Map<String, dynamic> json,
    List<String> names = const [],
  }) : super(json: json, names: names) {
    collections.addAll(
      json.entries
          .where((entry) => !entry.key.startsWith('.'))
          .map<ThemedJsonToDart>(
            (entry) => ThemedJsonToDart.fromJson(
              json: entry.value as Map<String, dynamic>,
              names: [...names, entry.key],
            ),
          )
          .toList(),
    );
  }

  /// List of sub-collections.
  final List<ThemedJsonToDart> collections = [];

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
