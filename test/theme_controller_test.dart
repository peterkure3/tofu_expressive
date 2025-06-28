import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tofu_expressive/tofu_expressive.dart';

void main() {
  group('ThemeController', () {
    test('toggleTheme() switches between light and dark mode', () {
      final controller = ThemeController();
      expect(controller.themeMode, ThemeMode.system);

      controller.toggleTheme();
      expect(controller.themeMode, ThemeMode.light);

      controller.toggleTheme();
      expect(controller.themeMode, ThemeMode.dark);
    });

    test('setThemeMode() updates the theme mode', () {
      final controller = ThemeController();
      controller.setThemeMode(ThemeMode.dark);
      expect(controller.themeMode, ThemeMode.dark);
    });

    test('setSeedColor() updates the seed color', () {
      final controller = ThemeController();
      const color = Colors.blue;
      controller.setSeedColor(color);
      expect(controller.seedColor, color);
    });
  });
}
