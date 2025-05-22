import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tofu_expressive/tofu_expressive.dart'; // Adjust if needed

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
    final isDark = themeController.isDarkMode;

    return MaterialApp(
      title: 'Tofu Expressive Demo',
      debugShowCheckedModeBanner: false,
      theme: TofuTheme.light(),
      darkTheme: TofuTheme.dark(),
      themeMode: themeController.themeMode,
      home: Scaffold(
        appBar: AppBar(title: const Text('Tofu Expressive')),
        body: Center(
          child: SwitchListTile(
            title: Text(isDark ? 'Dark Mode' : 'Light Mode'),
            value: isDark,
            onChanged: themeController.toggleTheme,
          ),
        ),
      ),
    );
  }
}
