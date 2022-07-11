import 'package:flutter_test/flutter_test.dart';
import 'package:themed_color_palette/src/themed_color_palette.dart';
import 'package:themed_color_palette/src/utils/utils.dart';

void main() {
  tearDown(Themes.platforms.clear);
  test(
    'When the children does not have any platforms specified, it should take the same ones as the parents',
    () {
      Themes.platforms.addAll([
        'platform0',
        'platform1',
        'platform2',
      ]);
      final parent = ThemedCollection.fromJson(
        json: {
          '.platforms': [
            'platform0',
            'platform1',
          ], // The constructed collection does not include all the platforms.
          'child': <String, dynamic>{}
        },
        context: BuildContext(
          names: ['parentName'],
          platforms: [
            'platform0',
            'platform1',
            'platform2',
          ], // The context given by the parent contains all the platforms.
        ),
      );
      expect(
        parent.context.platforms,
        orderedEquals(['platform0', 'platform1']),
        reason:
            'The constructed collection should only contain the platforms that were specified',
      );
      expect(
        parent.collections.first.context.platforms,
        orderedEquals(['platform0', 'platform1']),
        reason:
            'The child collection should only contain the platforms that were specified in its parent',
      );
    },
  );
}
