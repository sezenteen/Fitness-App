import 'package:flutter/material.dart';
import '../viewmodel/workout_viewmodel.dart';
import '../../../core/models/workout_model.dart';
import '../widgets/workout_card.dart';

class WorkoutsScreen extends StatelessWidget {
  final workoutViewModel = WorkoutViewModel();

  @override
  Widget build(BuildContext context) {
    List<Workout> workouts = workoutViewModel.getWorkouts();
    return Scaffold(
      appBar: AppBar(
        title: Text('Workouts'),
      ),
      body: ListView.builder(
        itemCount: workouts.length,
        itemBuilder: (context, index) {
          return WorkoutCard(workout: workouts[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Placeholder for creating new workout
          print('Create new workout tapped!');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Coming soon: Create Workout')),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );

  }
}
