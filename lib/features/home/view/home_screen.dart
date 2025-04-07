import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness Dashboard'),
      ),
      body: Center(
        child: Text(
          'Welcome to your fitness journey!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
