part of theme_color_palette;

/// Collection
class Collection extends JsonToDart {
  /// Collection from json
  Collection.fromJson({
    required Json json,
    Names parentName = const [],
  }) : super(json: json, parentName: parentName) {
    collections.addAll(
      (json['values'] as List)
          .map<JsonToDart>(
            (value) => JsonToDart.fromJson(
              json: value as Json,
              parentName: [...parentName, names.last],
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
