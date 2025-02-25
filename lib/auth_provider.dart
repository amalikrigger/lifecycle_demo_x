import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;

  void toggleAuth() {
    _isAuthenticated = !_isAuthenticated;
    notifyListeners(); // Notify consumers of auth state changes
  }
}
