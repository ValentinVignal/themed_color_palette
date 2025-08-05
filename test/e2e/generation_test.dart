import 'dart:io';

import 'package:build/build.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
import 'package:themed_color_palette/themed_color_palette.dart';

// ignore: subtype_of_sealed_class
class _MockBuildStep extends Mock implements BuildStep {}

void main() {
  setUpAll(() {
    registerFallbackValue(AssetId('package', 'path'));
  });
  test('It should generate test.theme.g.dart', () async {
    final yamlContent =
        await File('example/lib/theme.theme.yaml').readAsString();
    final buildStep = _MockBuildStep();

    final builder = ThemedColorPaletteBuilder();
    final assetId = AssetId('package', 'theme');
    when(() => buildStep.inputId).thenReturn(assetId);
    when(() => buildStep.readAsString(any())).thenAnswer(
      (_) async => yamlContent,
    );
    when(() => buildStep.writeAsString(any(), any())).thenAnswer(
      (_) async {},
    );

    await builder.build(buildStep);

    final generated = verify(() => buildStep.writeAsString(any(), captureAny()))
        .captured
        .first as String;

    final generatedContent = await File(
      'example/lib/theme.theme.g.dart',
    ).readAsString();

    expect(generated, generatedContent);
  });
}
