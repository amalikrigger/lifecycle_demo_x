import 'dart:async';

import 'package:flutter/material.dart';

class StreamWidget extends StatefulWidget {
  const StreamWidget({super.key});

  @override
  State<StreamWidget> createState() => _StreamWidgetState();
}

class _StreamWidgetState extends State<StreamWidget> {
  late StreamSubscription<int> _subscription;
  final Stream<int> _stream =
      Stream.periodic(const Duration(seconds: 1), (count) => count).take(10);

  int _latestValue = 0;

  @override
  void initState() {
    super.initState();
    _subscription = _stream.listen((event) {
      setState(() {
        _latestValue = event;
      });
    });
  }

  @override
  void dispose() {
    debugPrint('StreamWidget disposed');
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text('Stream Value: $_latestValue',
        style: const TextStyle(fontSize: 20));
  }
}
