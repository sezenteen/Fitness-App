import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'features/home/view/home_screen.dart';
import 'features/workouts/view/workouts_screen.dart';
import 'features/auth/view/login_screen.dart';
import 'features/auth/view/signup_screen.dart';
import 'widgets/bottom_nav_scaffold.dart';

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
        AppRoutes.login: (context) => LoginScreen(),
        AppRoutes.signup: (context) => SignupScreen(),
        AppRoutes.workouts: (context) => WorkoutsScreen(),
        AppRoutes.home: (context) => BottomNavScaffold(),
      },
    );
  }
}
