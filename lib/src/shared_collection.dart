part of theme_color_palette;

/// Collection
class SharedCollection extends SharedJsonToDart {
  /// Collection from json
  SharedCollection.fromJson({
    required Json json,
    Names names = const [],
  }) : super(json: json, names: names) {
    collections.addAll(
      json.entries
          .where((entry) => !entry.key.startsWith('.'))
          .map<JsonToDart>(
            (entry) => JsonToDart.fromJson(
              json: entry.value as Json,
              names: [...names, entry.key],
            ),
          )
          .toList(),
    );
  }

  /// List of sub-collections
  final List<JsonToDart> collections = [];

  @override
  String get dartParameter {
    return collections.map((item) => item.dartParameter).join();
  }

  @override
  List<JsonToDart> get values => collections;
}
