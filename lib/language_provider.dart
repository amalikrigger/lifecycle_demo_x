import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  Locale _locale = const Locale('en'); // Default to English

  Locale get locale => _locale;

  void switchLanguage() {
    _locale =
        _locale.languageCode == 'en' ? const Locale('es') : const Locale('en');
    notifyListeners(); // Notifies consumers that the language changed
  }
}
