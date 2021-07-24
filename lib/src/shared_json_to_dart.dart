part of theme_color_palette;

abstract class SharedJsonToDart extends JsonToDart {
  SharedJsonToDart({
    required Json json,
    required Names names,
  }) : super(json: json, names: names);

  /// From json constructor
  factory SharedJsonToDart.fromJson({required Json json, List<String> names = const []}) {
    final type = ObjectTypeExtension.fromString(json['.type'] as String?);
    switch (type) {
      case ObjectType.collection:
        return SharedCollection.fromJson(json: json, names: names);
      case ObjectType.value:
        return SharedValue(json: json, names: names);
    }
  }

  @override
  String get dartParameter;

  @override
  String dartDefine() {
    throw UnimplementedError('This should not have been called');
  }
}
