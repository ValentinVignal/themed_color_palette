// library theme_color_palette;

import 'package:build/build.dart';
import 'package:flutter/material.dart';
import 'package:source_gen/source_gen.dart';
import 'package:theme_color_palette/src/class_extras_generator.dart';
import 'package:theme_color_palette/src/info_generator.dart';
import 'package:theme_color_palette/src/theme_color_palette_builder.dart';

Builder themeColorPaletteGeneratorBuilder(BuilderOptions options) {
  return ThemeColorPaletteBuilder();
}

Builder infoGeneratorBuilder(BuilderOptions options) {
  return SharedPartBuilder([InfoGenerator()], 'info');
}

Builder classExtrasGeneratorBuilder(BuilderOptions options) {
  return SharedPartBuilder([ClassExtrasGenerator()], 'fields');
}
