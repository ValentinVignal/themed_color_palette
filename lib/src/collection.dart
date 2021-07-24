part of theme_color_palette;

/// Collection
class Collection extends JsonToDart {
  /// Collection from json
  Collection.fromJson({
    required Json json,
    Names names = const [],
  }) : super(json: json, names: names) {
    collections.addAll(
      (json['.values'] as Map)
          .entries
          .map<JsonToDart>(
            (entry) => JsonToDart.fromJson(
              json: entry.value as Json,
              names: [...names, entry.key as String],
            ),
          )
          .toList(),
    );
  }

  /// List of sub-collections
  final List<JsonToDart> collections = [];

  @override
  List<JsonToDart> get values => collections;
}
