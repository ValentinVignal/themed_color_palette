import 'package:test/test.dart';
import 'package:themed_color_palette/src/themed_color_palette.dart';

void main() {
  test('It should build with no version', () {
    const json = <String, dynamic>{
      '.themes': [],
      '.name': 'Name',
    };
    ColorPalette.fromJson(json: json);
  });
}
