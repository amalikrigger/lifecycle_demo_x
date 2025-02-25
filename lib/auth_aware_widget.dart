import 'package:flutter/material.dart';
import 'package:lifecycle_demo_x/auth_provider.dart';
import 'package:provider/provider.dart';

class AuthAwareWidget extends StatelessWidget {
  const AuthAwareWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          authProvider.isAuthenticated
              ? 'User is logged in'
              : 'User is logged out',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () => authProvider.toggleAuth(),
          child: Text(authProvider.isAuthenticated ? 'Logout' : 'Login'),
        ),
      ],
    );
  }
}
