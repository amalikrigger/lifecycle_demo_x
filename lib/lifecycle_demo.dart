import 'package:flutter/material.dart';
import 'package:lifecycle_demo_x/theme_provider.dart';

import 'lifecycle_demo_screen.dart';

class LifecycleDemo extends StatefulWidget {
  const LifecycleDemo({super.key});

  @override
  State<LifecycleDemo> createState() => _LifecycleDemoState();
}

class _LifecycleDemoState extends State<LifecycleDemo> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      themeMode: _themeMode,
      toggleTheme: _toggleTheme,
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: 'Lifecycle Demo',
            theme: ThemeData.light(),
            darkTheme: ThemeData.dark(),
            themeMode: ThemeProvider.of(context)?.themeMode ?? ThemeMode.light,
            home: const LifecycleDemoScreen(),
          );
        },
      ),
    );
  }
}
