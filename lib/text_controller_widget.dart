import 'package:flutter/material.dart';

class TextControllerWidget extends StatefulWidget {
  const TextControllerWidget({super.key});

  @override
  State<TextControllerWidget> createState() => _TextControllerWidgetState();
}

class _TextControllerWidgetState extends State<TextControllerWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    debugPrint('TextControllerWidget disposed');
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
            controller: _controller,
            decoration: const InputDecoration(labelText: 'Enter text')),
      ],
    );
  }
}
