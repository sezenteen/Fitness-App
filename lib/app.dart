import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'features/home/view/home_screen.dart';
import 'features/workouts/view/workouts_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (context) => HomeScreen(),
        // Add other routes here
        AppRoutes.workouts: (context) => WorkoutsScreen(),
      },
    );
  }
}
