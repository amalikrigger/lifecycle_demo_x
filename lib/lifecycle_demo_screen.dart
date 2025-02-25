import 'package:flutter/material.dart';
import 'package:lifecycle_demo_x/theme_aware_widget.dart';

import 'lifecycle_demo_widget.dart';

class LifecycleDemoScreen extends StatelessWidget {
  const LifecycleDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Lifecycle Demo')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LifecycleDemoWidget(), // Keeps your original lifecycle demo
            SizedBox(height: 30),
            ThemeAwareWidget(), // New widget that reacts to theme changes
          ],
        ),
      ),
    );
  }
}
