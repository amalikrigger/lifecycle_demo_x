import 'package:flutter/material.dart';

class FocusNodeWidget extends StatefulWidget {
  const FocusNodeWidget({super.key});

  @override
  State<FocusNodeWidget> createState() => _FocusNodeWidgetState();
}

class _FocusNodeWidgetState extends State<FocusNodeWidget> {
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    debugPrint('FocusNodeWidget disposed');
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          focusNode: _focusNode,
          decoration: const InputDecoration(labelText: 'Focus on me!'),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            _focusNode.requestFocus();
          },
          child: const Text('Focus Text Field'),
        ),
      ],
    );
  }
}
