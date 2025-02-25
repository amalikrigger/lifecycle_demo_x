import 'package:flutter/material.dart';
import 'package:lifecycle_demo_x/theme_provider.dart';

class ThemeAwareWidget extends StatefulWidget {
  const ThemeAwareWidget({super.key});

  @override
  State<ThemeAwareWidget> createState() => _ThemeAwareWidgetState();
}

class _ThemeAwareWidgetState extends State<ThemeAwareWidget> {
  ThemeMode? _currentTheme;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('didChangeDependencies() called in ThemeAwareWidget');

    final themeProvider = ThemeProvider.of(context);
    if (themeProvider != null && _currentTheme != themeProvider.themeMode) {
      setState(() {
        _currentTheme = themeProvider.themeMode;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Current Theme: ${_currentTheme == ThemeMode.dark ? "Dark" : "Light"}',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color:
                _currentTheme == ThemeMode.dark ? Colors.white : Colors.black,
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            ThemeProvider.of(context)?.toggleTheme();
          },
          child: const Text('Toggle Theme'),
        ),
      ],
    );
  }
}
