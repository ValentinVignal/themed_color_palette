import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

class InfoGenerator extends Generator {
  @override
  FutureOr<String> generate(LibraryReader library, BuildStep buildStep) {
    final buffer = StringBuffer();
    for (final element
        in library.allElements.whereType<TopLevelVariableElement>()) {
      buffer.writeln(
          '// ${element.name} - ${element.kind.displayName} - ${element.declaration}');
    }
    return buffer.toString();
  }
}
