import 'package:flutter/material.dart';

class LifecycleDemoWidget extends StatefulWidget {
  const LifecycleDemoWidget({super.key});

  @override
  State<LifecycleDemoWidget> createState() => _LifecycleDemoWidgetState();
}

class _LifecycleDemoWidgetState extends State<LifecycleDemoWidget> {
  // Called exactly once. Good for one-time initializations.
  @override
  void initState() {
    super.initState();
    debugPrint('initState() called');
    // e.g., Initialize data, set up Streams, etc.
  }

  // Called after initState (and whenever dependencies change).
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('didChangeDependencies() called');
    // e.g., If an InheritedWidget this widget depends on has changed.
  }

  // Called every time the widget is rebuilt
  // (e.g., after setState() or parent changes).
  @override
  Widget build(BuildContext context) {
    debugPrint('build() called');
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Check the debug console to see lifecycle logs.',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            // Force a rebuild by calling setState
            setState(() {});
          },
          child: const Text('Rebuild this widget'),
        ),
      ],
    );
  }

  // Called when this widget is removed from the widget tree,
  // e.g., when navigating away or removing the widget.
  @override
  void dispose() {
    debugPrint('dispose() called');
    // Clean up resources (Streams, animations, controllers, etc.)
    super.dispose();
  }
}
