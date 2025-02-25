import 'package:flutter/material.dart';
import 'package:lifecycle_demo_x/auth_aware_widget.dart';
import 'package:lifecycle_demo_x/language_aware_widget.dart';
import 'package:lifecycle_demo_x/stream_widget.dart';
import 'package:lifecycle_demo_x/text_controller_widget.dart';
import 'package:lifecycle_demo_x/theme_aware_widget.dart';

import 'animation_widget.dart';
import 'focus_node_widget.dart';
import 'lifecycle_demo_widget.dart';
import 'new_screen.dart';

class LifecycleDemoScreen extends StatefulWidget {
  const LifecycleDemoScreen({super.key});

  @override
  State<LifecycleDemoScreen> createState() => _LifecycleDemoScreenState();
}

class _LifecycleDemoScreenState extends State<LifecycleDemoScreen> {
  bool showTextController = false;
  bool showAnimation = false;
  bool showStream = false;
  bool showFocusNode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Lifecycle Demo')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                LifecycleDemoWidget(),
                const SizedBox(height: 30),
                ThemeAwareWidget(),
                const SizedBox(height: 30),
                LanguageAwareWidget(),
                const SizedBox(height: 30),
                AuthAwareWidget(),
                const SizedBox(height: 30),

                // ✅ Toggleable TextControllerWidget
                ElevatedButton(
                  onPressed: () =>
                      setState(() => showTextController = !showTextController),
                  child: Text(showTextController
                      ? 'Remove Text Field'
                      : 'Add Text Field'),
                ),
                if (showTextController) const TextControllerWidget(),
                const SizedBox(height: 30),

                // ✅ Toggleable AnimationWidget
                ElevatedButton(
                  onPressed: () =>
                      setState(() => showAnimation = !showAnimation),
                  child: Text(
                      showAnimation ? 'Remove Animation' : 'Add Animation'),
                ),
                if (showAnimation) const AnimationWidget(),
                const SizedBox(height: 30),

                // ✅ Toggleable StreamWidget
                ElevatedButton(
                  onPressed: () => setState(() => showStream = !showStream),
                  child: Text(showStream ? 'Remove Stream' : 'Add Stream'),
                ),
                if (showStream) const StreamWidget(),
                const SizedBox(height: 30),

                // ✅ Toggleable FocusNodeWidget
                ElevatedButton(
                  onPressed: () =>
                      setState(() => showFocusNode = !showFocusNode),
                  child: Text(showFocusNode
                      ? 'Remove Focus Widget'
                      : 'Add Focus Widget'),
                ),
                if (showFocusNode) const FocusNodeWidget(),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NewScreen()),
                    );
                  },
                  child: const Text('Go to New Screen'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
