import 'package:flutter/material.dart';
import 'package:lifecycle_demo_x/auth_aware_widget.dart';
import 'package:lifecycle_demo_x/language_aware_widget_stateful.dart';
import 'package:lifecycle_demo_x/theme_aware_widget.dart';

import 'language_aware_widget.dart';
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
            LifecycleDemoWidget(),
            SizedBox(height: 30),
            ThemeAwareWidget(),
            SizedBox(height: 30),
            LanguageAwareWidget(),
            SizedBox(height: 30),
            LanguageAwareWidgetStateful(),
            SizedBox(height: 30),
            AuthAwareWidget(),
          ],
        ),
      ),
    );
  }
}
