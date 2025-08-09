import 'package:example_themed_color_palette/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('It can be lerped', () {
    expect(ThemeColorPalette.light().lerp(ThemeColorPalette.dark(), 0),
        ThemeColorPalette.light());

    final lerped =
        ThemeColorPalette.light().lerp(ThemeColorPalette.dark(), 0.5);
    expect(lerped.secondaryColor, isSameColorAs(const Color(0xff7ec141)));
    expect(lerped.textEmphasis.high, isSameColorAs(const Color(0xff808080)));
    expect(lerped.floatingActionButton.disabledColor,
        isSameColorAs(const Color(0xff688bb0)));

    expect(ThemeColorPalette.light().lerp(ThemeColorPalette.dark(), 1),
        ThemeColorPalette.dark());
  });
}
