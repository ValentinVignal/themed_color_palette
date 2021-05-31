abstract class JsonToDart {
  factory JsonToDart.fromJson(Json json) {
    final type = ObjectTypeExtension.fromString(json['type'] as String);
    switch (type) {
      case ObjectType.collection:
        return SharedCollection.fromJson(json);
      case ObjectType.color:
        return Color.fromJson(json);
    }
  }
  String dartDefine();

  String dartInstance();

  String get name;
}
