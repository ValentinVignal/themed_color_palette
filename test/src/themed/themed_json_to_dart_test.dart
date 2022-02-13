import 'package:flutter_test/flutter_test.dart';
import 'package:theme_color_palette/src/theme_color_palette.dart';
import 'package:theme_color_palette/src/utils/utils.dart';

class _TestThemedJsonToDart extends ThemedJsonToDart {
  _TestThemedJsonToDart({
    required Map<String, dynamic> json,
    required BuildContext context,
  }) : super(
          json: json,
          context: context,
        );

  @override
  String get className => 'className';

  @override
  String toJsonString() => 'toJsonString';

  @override
  String fromJsonString({required String value, required String platform}) =>
      'fromJsonString($value, $platform)';

  @override
  String copyWithJsonString(
          {required String value, required String platform}) =>
      'copyWithJsonString($value, $platform)';
}

void main() {
  tearDown(() {
    Themes.platforms.clear();
    Themes.themes.clear();
  });
  test(
    'It should only construct the object for the specified platforms',
    () {
      Themes.platforms.addAll([
        'platform0',
        'platform1',
        'platform2',
      ]);
      final themedJsonToDart = _TestThemedJsonToDart(
        json: {},
        context: BuildContext(
          names: ['parentNames'],
          platforms: ['platform0', 'platform1'], // platform2 is not included.
        ),
      );

      final dartDefine = themedJsonToDart.dartDefine(const DartDefineContext());

      expect(
        dartDefine,
        contains('class className {'),
        reason: 'It should create a generic class',
      );

      expect(
        dartDefine,
        contains('class className_platform0 implements className {'),
        reason: 'It should create the platform0 class',
      );

      expect(
        dartDefine,
        contains('class className_platform1 implements className {'),
        reason: 'It should create the platform1 class',
      );

      expect(
        dartDefine,
        isNot(contains('class className_platform2 implements className {')),
        reason: 'It should not create the platform2 class',
      );
    },
  );
}
