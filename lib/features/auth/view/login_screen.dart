import 'package:flutter/material.dart';
import '../../../routes/app_routes.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _simulateLogin(BuildContext context) {
    final email = emailController.text.trim();
    final password = passwordController.text;

    if (email.isNotEmpty && password.isNotEmpty) {
      // Simulate success
      Navigator.pushReplacementNamed(context, AppRoutes.home);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter both email and password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => _simulateLogin(context),
              child: Text('Login'),
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, AppRoutes.signup),
              child: Text("Don't have an account? Sign up"),
            ),
          ],
        ),
      ),
    );
  }
}
