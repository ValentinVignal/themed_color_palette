part of theme_color_palette;

/// Shared collection.
class SharedCollection extends SharedJsonToDart {
  /// Shared collection from json.
  SharedCollection.fromJson({
    required Map<String, dynamic> json,
    required BuildContext context,
  }) : super(json: json, context: context) {
    collections.addAll(
      json.entries
          .where((entry) => !entry.key.startsWith('.'))
          .map<SharedJsonToDart>(
            (entry) => SharedJsonToDart.fromJson(
              json: entry.value as Map<String, dynamic>,
              context: this.context.extendsWith(name: entry.key),
            ),
          )
          .toList(),
    );
  }

  @override
  String get className => throw UnsupportedError(
        'SharedCollection are not instantiated, there is no class name',
      );

  @override
  String get name => throw UnsupportedError(
        'SharedCollection are not instantiated, there is no name',
      );

  /// List of sub-collections
  final List<SharedJsonToDart> collections = [];

  @override
  String dartParameter({required String platform}) {
    return collections
        .map((item) => item.dartParameter(platform: platform))
        .join();
  }
}
