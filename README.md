# 🧈 Tofu Expressive

**Tofu Expressive** is a Flutter theme package inspired by Google's Material 3 expressive design system.
It offers a clean and modern theming solution built on top of [`flex_color_scheme`](https://pub.dev/packages/flex_color_scheme).

---

## ✨ Features

- ✅ Material 3 design principles with expressive color palettes
- 🎨 Dynamic color support (e.g. Material You on Android 12+)
- 🌗 System and manual light/dark mode switching
- 🖥️ Cross-platform compatibility (Android, iOS, Web, macOS, Windows, Linux)
- ⚙️ Built on top of `flex_color_scheme` for rich customization

---

## 🚀 Getting Started

Add it to your `pubspec.yaml`:

```yaml
dependencies:
  tofu_expressive: ^<latest_version>
```

---

## 🛠 Usage

Use the light and dark themes:

```dart
import 'package:flutter/material.dart';
import 'package:tofu_expressive/tofu_expressive.dart';

void main() {
  final themeController = ThemeController();

  runApp(MaterialApp(
    theme: TofuTheme.light(),
    darkTheme: TofuTheme.dark(),
    themeMode: themeController.themeMode,
  ));
}
```

---

## 🎨 Customization

You can pass a custom seed color for branding:

```dart
TofuTheme.light(Colors.deepPurple);
TofuTheme.dark(Colors.deepPurple);
```

---

## 📁 Example

Check the `example/` directory for a full demo app using `TofuTheme` and `ThemeController`.

---

## 📄 License

MIT © 2025 Peter Kure

---

Made with 💛 for Flutter developers.
