## 0.0.1

## Features
* Material 3 Expressive Design:
Implemented customizable light and dark themes using FlexColorScheme, adhering to Material 3 design principles.

* Dynamic Color Support:
Supports dynamic color generation, including Material You on Android 12+, allowing the theme to adapt based on user preferences or system settings.

* ThemeController:
Introduced ThemeController to manage and toggle between light and dark themes programmatically, with support for system-based theme switching.

* Cross-Platform Compatibility:
Designed to work seamlessly across Android, iOS, Web, macOS, Windows, and Linux platforms.

* Custom Seed Color:
Allows developers to pass a custom seed color to influence the theme’s primary color palette, enabling brand-specific theming.

* Material 3 Widgets Compatibility:
Ensures compatibility with Material 3 widgets such as NavigationBar, FilledButton, and Card with elevation overlays.

* Example Application:
Provided a full example application demonstrating theme switching, custom palettes, and dynamic styling.

## 0.0.2

- Added comprehensive Dartdoc comments to public API elements.
- Improved theme management in the example application.
- Updated README with usage examples.

## 0.0.3

- Fixed a bug in `ThemeController.toggleTheme` where the theme was not toggling correctly.
- Refactored `TofuTheme` to reduce code duplication.
- Added tests for `ThemeController`.
- Enhanced the example application to showcase dynamic color and seed color features.
