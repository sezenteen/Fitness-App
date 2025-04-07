import 'package:flutter/material.dart';
import '../../../routes/app_routes.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _simulateSignup(BuildContext context) {
    final email = emailController.text.trim();
    final password = passwordController.text;

    if (email.isNotEmpty && password.length >= 6) {
      Navigator.pushReplacementNamed(context, AppRoutes.home);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter valid email and password (min 6 chars)')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up')),
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
              onPressed: () => _simulateSignup(context),
              child: Text('Create Account'),
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
            ),
          ],
        ),
      ),
    );
  }
}
