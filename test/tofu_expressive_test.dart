import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tofu_expressive/tofu_expressive.dart';

void main() {
  group('TofuTheme', () {
    test('light() returns a valid ThemeData with default seed color', () {
      final theme = TofuTheme.light();
      expect(theme, isA<ThemeData>());
      expect(theme.brightness, Brightness.light);
    });

    test('dark() returns a valid ThemeData with default seed color', () {
      final theme = TofuTheme.dark();
      expect(theme, isA<ThemeData>());
      expect(theme.brightness, Brightness.dark);
    });

    test('light() and dark() accept and apply custom seed color', () {
      const seedColor = Colors.teal;
      final lightTheme = TofuTheme.light(seedColor: seedColor);
      final darkTheme = TofuTheme.dark(seedColor: seedColor);

      expect(lightTheme.colorScheme.primary.toARGB32(), seedColor.toARGB32());
      expect(darkTheme.colorScheme.primary.toARGB32(), seedColor.toARGB32());
    });
  });
}
