import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test.theme.g.dart';

void main() {
  group('copyWithJson', () {
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
      'It should return an object with the nested modified values',
      () {
        const themeColorPalette0 = ThemeColorPalette.light();
        final themeColorPalette1 = themeColorPalette0.copyWithJson(const {
          'textEmphasis': <dynamic, dynamic>{
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
  });

  group('copyWithYaml', () {
    test(
      'It should return an object with the modified values',
      () {
        const themeColorPalette0 = ThemeColorPalette.light();
        final themeColorPalette1 = themeColorPalette0.copyWithYaml(const {
          'secondaryColor': 'ffffffff',
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
        final themeColorPalette1 = themeColorPalette0.copyWithYaml(const {
          'textEmphasis': {
            'high': 'aaaaaaaa',
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
  });
}
