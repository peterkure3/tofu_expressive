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

    return MaterialApp(
      title: 'Tofu Expressive Demo',
      theme: TofuTheme.light(),
      darkTheme: TofuTheme.dark(),
      themeMode: themeController.themeMode,
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Provider.of<ThemeController>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tofu Expressive Theme'),
        actions: [
          IconButton(
            icon: Icon(themeController.isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: () {
              themeController.toggleTheme(!themeController.isDarkMode);
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Current Theme: ${themeController.themeMode.name}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                themeController.setThemeMode(ThemeMode.system);
              },
              child: const Text('Follow System Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
