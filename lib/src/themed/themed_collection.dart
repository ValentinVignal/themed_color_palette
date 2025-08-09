part of themed_color_palette;

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
              context: this.context.extendsWith(
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
  String get className => [
        BaseName.colorPalette,
        context.className,
      ].join(divider);

  @override
  List<ThemedJsonToDart> get values => collections;

  @override
  String toJsonString() {
    return '$instanceName.toJson()';
  }

  @override
  String fromJsonString({required String value}) {
    return '$className.fromJson(Map<String, dynamic>.from($value as Map))';
  }

  @override
  String copyWithJsonString({required String value}) {
    return '$instanceName.copyWithJson($value == null ? null : Map<String, dynamic>.from($value as Map))';
  }

  @override
  String fromYamlString({required String value}) {
    return '$className.fromYaml(Map<String, dynamic>.from($value as Map))';
  }

  @override
  String copyWithYamlString({required String value}) {
    return '$instanceName.copyWithYaml($value == null ? null : Map<String, dynamic>.from($value as Map))';
  }

  @override
  String toYamlString() {
    return '$instanceName.toYaml()';
  }

  @override
  String lerp({
    required String value,
    required String other,
  }) {
    return '$value.lerp($other, t)';
  }
}
