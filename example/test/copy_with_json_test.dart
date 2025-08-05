import 'package:example_themed_color_palette/theme.dart';
import 'package:flutter/material.dart';
import 'package:test/test.dart';

void main() {
  test(
    'It should return an object with the same values if there is no parameter',
    () {
      const themeColorPalette0 = ThemeColorPalette.light();
      final themeColorPalette1 = themeColorPalette0.copyWithJson();

      expect(
        themeColorPalette0.secondaryColor,
        themeColorPalette1.secondaryColor,
      );
      expect(
        themeColorPalette0.textEmphasis.high,
        themeColorPalette1.textEmphasis.high,
      );
    },
  );

  test(
    'It should return an object with the modified values',
    () {
      const themeColorPalette0 = ThemeColorPalette.light();
      final themeColorPalette1 = themeColorPalette0.copyWithJson(const {
        'secondaryColor': Color(0xffffffff),
      });

      expect(
        themeColorPalette1.secondaryColor,
        isNot(themeColorPalette0.secondaryColor),
      );
      expect(
        themeColorPalette1.secondaryColor,
        const Color(0xffffffff),
      );
      expect(
        themeColorPalette0.textEmphasis.high,
        themeColorPalette1.textEmphasis.high,
      );
    },
  );

  test(
    'It should return an object with the nested modified values',
    () {
      const themeColorPalette0 = ThemeColorPalette.light();
      final themeColorPalette1 = themeColorPalette0.copyWithJson(const {
        'textEmphasis': {
          'high': Color(0xaaaaaaaa),
        },
      });

      expect(
        themeColorPalette0.secondaryColor,
        themeColorPalette1.secondaryColor,
      );
      expect(
        themeColorPalette1.secondaryColor,
        isNot(themeColorPalette0.textEmphasis.high),
      );
      expect(
        themeColorPalette1.textEmphasis.high,
        const Color(0xaaaaaaaa),
      );
    },
  );
}
