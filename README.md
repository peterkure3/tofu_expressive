# 🧈 Tofu Expressive

Tofu Expressive is a Flutter theme package built with [Material 3](https://m3.material.io/) expressive design principles. It includes dynamic color support, dark/light mode switching (system and manual), and works across mobile and desktop platforms.

## ✨ Features

- Material 3 expressive design
- Dynamic color support (Material You on Android 12+)
- Manual and system-based theme switching
- Works on Android, iOS, Web, macOS, Windows, and Linux
- Built using [`flex_color_scheme`](https://pub.dev/packages/flex_color_scheme)

## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  tofu_expressive: ^0.1.0
```

Then run:

```bash
flutter pub get
```

## 🚀 Getting Started

Wrap your app with a `ChangeNotifierProvider` and use the theme controller:

```dart
final themeController = ThemeController();

MaterialApp(
  theme: TofuTheme.light(),
  darkTheme: TofuTheme.dark(),
  themeMode: themeController.themeMode,
);
```

To toggle the theme manually:

```dart
themeController.toggleTheme(isDarkMode);
```

Or to follow the system setting:

```dart
themeController.setThemeMode(ThemeMode.system);
```

## 🧪 Example

See the [`example/`](example/) folder for a full sample Flutter app using Tofu Expressive.

## 🖼️ Screenshots

| Light Mode                    | Dark Mode                   |
| ----------------------------- | --------------------------- |
| ![light](screenshots/light.png) | ![dark](screenshots/dark.png) |

## ⚙️ Custom Seed Colors

Want to apply your own seed color?

```dart
TofuTheme.light(Colors.teal);
TofuTheme.dark(Colors.teal);
```

## 📚 API Reference

- `TofuTheme.light([Color? seedColor])`
- `TofuTheme.dark([Color? seedColor])`
- `ThemeController.toggleTheme(bool isDarkMode)`
- `ThemeController.setThemeMode(ThemeMode)`

## Link to Pub.dev

[![pub package](https://img.shields.io/pub/v/tofu_expressive.svg)](https://pub.dev/packages/tofu_expressive)

## 💡 Inspiration

Based on Material 3 keynote color schemes and Google's expressive UI principles.

## 🛠️ Built With

- Flutter
- flex_color_scheme
- dynamic_color
- provider

## 📄 License

MIT License © 2025 Peter Kure

---

Made with 💛 for Flutter developers.
