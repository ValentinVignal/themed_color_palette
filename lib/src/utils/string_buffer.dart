/// String buffer extension.
extension StringBufferExtension on StringBuffer {
  /// Indent from int.
  static String indent(int indent) => '  ' * indent;

  /// Writes a line with a specific indentation.
  void writeLine(int indentValue, String line) {
    writeln(indent(indentValue) + line);
  }
}
