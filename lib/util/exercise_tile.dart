import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final icon;
  final String exerciseName;
  final int numberOfExercises;
  final color;

  const ExerciseTile({
    super.key,
    required this.icon,
    required this.exerciseName,
    required this.numberOfExercises,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              padding: EdgeInsets.all(16),
              color: color,
              child: Icon(icon, color: Colors.white),
            ),
          ),
          title: Text(
            exerciseName,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            // ignore: prefer_interpolation_to_compose_strings
            numberOfExercises.toString() + ' Exercise',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          trailing: Icon(Icons.more_horiz),
        ),
      ),
    );
  }
}
