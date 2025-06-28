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
  tofu_expressive: ^0.0.3
```

---

## 🛠 Usage

Use the light and dark themes:

```dart
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tofu_expressive/tofu_expressive.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Provider.of<ThemeController>(context);

    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        return MaterialApp(
          title: 'Tofu Expressive Demo',
          debugShowCheckedModeBanner: false,
          theme: TofuTheme.light(
            seedColor: themeController.seedColor,
          ),
          darkTheme: TofuTheme.dark(
            seedColor: themeController.seedColor,
          ),
          themeMode: themeController.themeMode,
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Tofu Expressive'),
            ),
            body: Center(
              child: SwitchListTile(
                title: Text(themeController.isDarkMode ? 'Dark Mode' : 'Light Mode'),
                value: themeController.isDarkMode,
                onChanged: (_) => themeController.toggleTheme(),
              ),
            ),
          ),
        );
      },
    );
  }
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
