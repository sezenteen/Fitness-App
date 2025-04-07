import 'package:flutter/material.dart';
import '../../../routes/app_routes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, AppRoutes.workouts),
              child: Text('View Workouts'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, AppRoutes.login),
              child: Text('Login'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, AppRoutes.signup),
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
