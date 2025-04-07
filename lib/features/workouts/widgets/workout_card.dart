import 'package:flutter/material.dart';
import '../../../core/models/workout_model.dart';
import '../view/workout_detail_screen.dart';

class WorkoutCard extends StatelessWidget {
  final Workout workout;

  const WorkoutCard({required this.workout});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        title: Text(workout.title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('${workout.description}\nDuration: ${workout.duration} mins'),
        isThreeLine: true,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WorkoutDetailScreen(workout: workout),
            ),
          );
        },
      ),
    );
  }
}
