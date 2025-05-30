/*
  Tofu Expressive is a Flutter theme package inspired by Google's Material 3 expressive design system.

  It offers a clean and modern theming solution that supports:

  - ✅ Material 3 design principles with expressive color palettes
  - 🎨 Dynamic color support (e.g. Material You on Android 12+)
  - 🌗 System-based and manual dark/light mode switching
  - 🖥️ Cross-platform compatibility (Android, iOS, Web, macOS, Windows, Linux)
  - 🛠️ Built on top of `flex_color_scheme` for rich customization

  ## Usage

  You can use `TofuTheme.light()` and `TofuTheme.dark()` for theme data,
  and control them using a `ThemeController`:

      final themeController = ThemeController();

      MaterialApp(
        theme: TofuTheme.light(),
        darkTheme: TofuTheme.dark(),
        themeMode: themeController.themeMode,
      );

  ## Customization

  You can provide your own seed color for brand identity:

      TofuTheme.light(Colors.deepOrange);
      TofuTheme.dark(Colors.deepOrange);

  See the `example/` directory for a full usage demo.

  Copyright (c) 2025 Peter Kure. MIT Licensed.
*/

export 'src/tofu_theme.dart';
export 'src/theme_controller.dart';
