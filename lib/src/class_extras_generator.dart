import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

class ClassExtrasGenerator extends Generator {
  @override
  FutureOr<String> generate(LibraryReader library, BuildStep buildStep) {
    final buffer = StringBuffer();
    for (final _class in library.classes) {
      final name = _class.displayName;
      buffer.writeln('extension \$$name on $name {');
      if (_class.fields.isNotEmpty) {
        buffer.write('String details() => ');
        final fieldsWithValue = _class.fields.map((field) {
          return '${field.displayName}=\$${field.displayName}';
        });
        buffer.write("'[$name] ${fieldsWithValue.join(', ')}';");
      }

      buffer.writeln('}');
    }
    return buffer.toString();
  }
}
