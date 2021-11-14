part of theme_color_palette;

/// Collection.
class Collection extends JsonToDart {
  /// Collection from json
  Collection.fromJson({
    required Map<String, dynamic> json,
    List<String> names = const [],
  }) : super(json: json, names: names) {
    collections.addAll(
      json.entries
          .where((entry) => !entry.key.startsWith('.'))
          .map<JsonToDart>(
            (entry) => JsonToDart.fromJson(
              json: entry.value as Map<String, dynamic>,
              names: [...names, entry.key],
            ),
          )
          .toList(),
    );
  }

  /// List of sub-collections.
  final List<JsonToDart> collections = [];

  @override
  List<JsonToDart> get values => collections;
}
