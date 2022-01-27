import 'package:flutter_test/flutter_test.dart';
import 'package:theme_color_palette/src/theme_color_palette.dart';
import 'package:theme_color_palette/src/utils/utils.dart';

void main() {
  group('double', () {
    test('non private double', () {
      Themes.themes.addAll(['light', 'dark']);
      final themedValue = ThemedValue(
        json: {
          '.type': 'double',
          '.toIgnore': 'ignoredValue',
          '.description': 'description',
          'light': 2,
          'dark': 3,
        },
        context: BuildContext(names: ['name1', 'name2']),
      );

      expect(themedValue.type, ValueType.doubleNumber);
      expect(themedValue.dartConstructor('light'), '2.0');
      expect(themedValue.dartConstructor('dark'), '3.0');
      expect(themedValue.className, 'double');
      expect(themedValue.dartDefine(const DartDefineContext()), '');
      expect(themedValue.toJsonString(), 'name2');
      expect(themedValue.fromJsonString('value'), 'value as double');
      expect(themedValue.description, 'description');
      expect(themedValue.isPrivate, false);
      expect(themedValue.context.name, 'name2');
    });
  });
}
