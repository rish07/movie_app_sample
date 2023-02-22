import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:lenskart_test/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.actor1).existsSync(), true);
    expect(File(Images.actor2).existsSync(), true);
    expect(File(Images.actor3).existsSync(), true);
    expect(File(Images.actor4).existsSync(), true);
    expect(File(Images.headerImage).existsSync(), true);
    expect(File(Images.movieCover).existsSync(), true);
    expect(File(Images.movieCover2).existsSync(), true);
    expect(File(Images.movieCover3).existsSync(), true);
  });
}
