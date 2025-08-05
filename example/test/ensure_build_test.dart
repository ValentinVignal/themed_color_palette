import 'package:build_verify/build_verify.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
      skip: true,
      'ensure_build',
      () async => expectBuildClean(packageRelativeDirectory: 'example'));
}
