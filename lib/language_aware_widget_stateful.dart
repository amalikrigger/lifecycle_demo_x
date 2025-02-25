import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'language_provider.dart';

class LanguageAwareWidgetStateful extends StatefulWidget {
  const LanguageAwareWidgetStateful({super.key});

  @override
  State<LanguageAwareWidgetStateful> createState() =>
      _LanguageAwareWidgetStatefulState();
}

class _LanguageAwareWidgetStatefulState
    extends State<LanguageAwareWidgetStateful> {
  Locale? _currentLocale;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint('didChangeDependencies() called in LanguageAwareWidgetStateful');

    final languageProvider =
        Provider.of<LanguageProvider>(context); // No listen: false
    if (_currentLocale != languageProvider.locale) {
      setState(() {
        _currentLocale = languageProvider.locale;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Current Language: ${_currentLocale?.languageCode.toUpperCase()}',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            Provider.of<LanguageProvider>(context, listen: false)
                .switchLanguage();
          },
          child: const Text('Switch Language'),
        ),
      ],
    );
  }
}
