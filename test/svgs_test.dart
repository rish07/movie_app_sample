import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:lenskart_test/resources/resources.dart';

void main() {
  test('svgs assets test', () {
    expect(File(Svgs.addIcon).existsSync(), true);
    expect(File(Svgs.linedStar).existsSync(), true);
    expect(File(Svgs.menu).existsSync(), true);
    expect(File(Svgs.star).existsSync(), true);
  });
}
