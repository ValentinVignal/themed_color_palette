import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:example_themed_color_palette/theme.dart';

void main() {
  testWidgets(
    "It can be used as theme extension",
    (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData(
            extensions: [
              ThemeColorPalette.light(),
            ],
          ),
          home: Scaffold(
            body: Center(
              child: Text('Themed Color Palette Test'),
            ),
          ),
        ),
      );

      final theme = Theme.of(tester.element(find.byType(Text)));
      expect(theme.extensions, hasLength(1));
      expect(theme.extension<ThemeColorPalette>(), ThemeColorPalette.light());
    },
  );
}
