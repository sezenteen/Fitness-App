import '../../../core/models/workout_model.dart';

class WorkoutViewModel {
  List<Workout> getWorkouts() {
    return [
      Workout(
        id: '1',
        title: 'Full Body Blast',
        description: 'A quick full-body workout for strength and cardio.',
        duration: 30,
      ),
      Workout(
        id: '2',
        title: 'Core Crusher',
        description: 'Focus on your abs and core muscles.',
        duration: 20,
      ),
      Workout(
        id: '3',
        title: 'Leg Day Burn',
        description: 'Target glutes, quads, and calves.',
        duration: 25,
      ),
    ];
  }
}
