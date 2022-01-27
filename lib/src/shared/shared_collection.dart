part of theme_color_palette;

/// Collection
class SharedCollection extends SharedJsonToDart {
  /// Collection from json
  SharedCollection.fromJson({
    required Map<String, dynamic> json,
    List<String> names = const [],
  }) : super(json: json, names: names) {
    collections.addAll(
      json.entries
          .where((entry) => !entry.key.startsWith('.'))
          .map<SharedJsonToDart>(
            (entry) => SharedJsonToDart.fromJson(
              json: entry.value as Map<String, dynamic>,
              names: [...names, entry.key],
            ),
          )
          .toList(),
    );
  }

  /// List of sub-collections
  final List<SharedJsonToDart> collections = [];

  @override
  String get dartParameter {
    return collections.map((item) => item.dartParameter).join();
  }
}
