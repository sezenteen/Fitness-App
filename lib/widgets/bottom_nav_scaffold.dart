import 'package:flutter/material.dart';
import '../features/home/view/home_screen.dart';
import '../features/workouts/view/workouts_screen.dart';

class BottomNavScaffold extends StatefulWidget {
  @override
  _BottomNavScaffoldState createState() => _BottomNavScaffoldState();
}

class _BottomNavScaffoldState extends State<BottomNavScaffold> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    WorkoutsScreen(),
    Center(child: Text('Profile screen coming soon!')),
  ];

  final List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.fitness_center), label: 'Workouts'),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: _items,
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
      ),
    );
  }
}
