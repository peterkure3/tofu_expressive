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
              backgroundColor: Theme.of(context).colorScheme.surface,
              surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
              elevation: 0,
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SwitchListTile(
                    title: Text(themeController.isDarkMode
                        ? 'Dark Mode'
                        : 'Light Mode'),
                    value: themeController.isDarkMode,
                    onChanged: (_) => themeController.toggleTheme(),
                  ),
                  const SizedBox(height: 20),
                  const Text('Seed Color'),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      for (final color in [
                        Colors.teal,
                        Colors.blue,
                        Colors.purple
                      ])
                        GestureDetector(
                          onTap: () => themeController.setSeedColor(color),
                          child: CircleAvatar(
                            backgroundColor: color,
                            radius: 20,
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
