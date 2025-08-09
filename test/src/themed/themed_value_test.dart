import 'package:test/test.dart';
import 'package:themed_color_palette/src/themed_color_palette.dart';
import 'package:themed_color_palette/src/utils/theme.dart';
import 'package:themed_color_palette/src/utils/utils.dart';

void main() {
  group('double', () {
    test('non private double', () {
      Themes.themes.addAll(const [
        ThemeDefinition(name: 'light'),
        ThemeDefinition(name: 'dark')
      ]);
      final themedValue = ThemedValue(
        json: const {
          '.type': 'double',
          '.toIgnore': 'ignoredValue',
          '.description': 'description',
          'light': 2,
          'dark': 3,
        },
        context: BuildContext(names: const ['name1', 'name2']),
      );

      expect(themedValue.type, ValueType.doubleNumber);
      expect(themedValue.dartConstructor(theme: 'light'), '2.0');
      expect(themedValue.dartConstructor(theme: 'dark'), '3.0');
      expect(themedValue.className, 'double');
      expect(themedValue.dartDefine(const DartDefineContext()), '');
      expect(themedValue.toJsonString(), 'name2');
      expect(themedValue.fromJsonString(value: 'value'), 'value as double');
      expect(themedValue.description, 'description');
      expect(themedValue.isPrivate, false);
      expect(themedValue.context.name, 'name2');
    });
  });
}
