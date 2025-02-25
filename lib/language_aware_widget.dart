import 'package:flutter/material.dart';
import 'package:lifecycle_demo_x/language_provider.dart';
import 'package:provider/provider.dart';

class LanguageAwareWidget extends StatelessWidget {
  const LanguageAwareWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Current Language: ${languageProvider.locale.languageCode.toUpperCase()}',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => languageProvider.switchLanguage(),
          child: const Text('Switch Language'),
        ),
      ],
    );
  }
}
