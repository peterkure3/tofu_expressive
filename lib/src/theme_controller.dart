import 'package:flutter/material.dart';

/// A controller that manages the application's theme mode and seed color.
///
/// This class extends [ChangeNotifier] to allow widgets to listen for changes
/// and rebuild accordingly. It facilitates toggling between light and dark themes,
/// setting a specific [ThemeMode], and updating the seed color used for theming.
class ThemeController extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;
  Color _seedColor = Colors.teal;

  /// The current theme mode.
  ThemeMode get themeMode => _themeMode;

  /// Checks whether the app is in dark mode.
  bool get isDarkMode => _themeMode == ThemeMode.dark;

  /// The seed color for the theme.
  Color get seedColor => _seedColor;

  /// Toggles between light and dark themes.
  void toggleTheme() {
    _themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  /// Sets the theme mode.
  void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners();
  }

  /// Sets the seed color for the theme.
  void setSeedColor(Color color) {
    _seedColor = color;
    notifyListeners();
  }
}
