library theme_color_palette;

part 'globals.dart';
part 'types.dart';
part 'json_to_dart.dart';
part 'object_type.dart';
part 'value/value_type.dart';
part 'value/color.dart';
part 'value/double.dart';
part 'value/font_weight.dart';
part 'value/int.dart';
part 'value/value.dart';
part 'collection.dart';
part 'themed_value.dart';
part 'shared_value.dart';
part 'string_buffer.dart';

/// The color palette containing everything
class ColorPalette extends JsonToDart {
  /// [ColorPalette] from Json
  ColorPalette.fromJson({required Json json}) : super(json: json, parentName: const []) {
    Themes.themes.addAll(List<String>.from(json['themes'] as List));
    baseName = names.first;
    sharedValues.addAll((json['constants'] as List).map((value) => SharedValue(json: value as Json, parentName: [sharedBaseName])).toList());
    collections.addAll((json['collections'] as List).map((collection) => JsonToDart.fromJson(json: collection as Json, parentName: [baseName])).toList());
  }

  /// The base name for themed values
  static String baseName = '';

  /// The based name for shared values
  static const sharedBaseName = '.shared';

  /// List of collections (themed)
  final List<JsonToDart> collections = [];

  /// List of shared values
  final List<SharedValue> sharedValues = [];

  @override
  List<JsonToDart> get values => collections;

  @override
  List<SharedValue> get constants => sharedValues;
}
