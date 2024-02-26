import 'package:flutter/material.dart';
import 'package:gymtracker/model/Excercise.dart';
import '../model/Workout.dart';
import '../model/Set.dart';

class Trainingview extends StatefulWidget {
  State<Trainingview> createState() => TrainingViewState();
}

class TrainingViewState extends State<Trainingview> {
  Workout testWorkout = Workout(trainingName: 'test');

  TraingingViewState(){
    testWorkout.addExcercise(excercise: Excercise(name: 'biceps  curls', muscleGroup: 'arms'));
    testWorkout.addExcercise(excercise: Excercise(name: 'bench press', muscleGroup: 'chest'));
    testWorkout.excercises[0].addSet(Set(weight: 10, reps: 12));
    testWorkout.excercises[0].addSet(Set(weight: 20, reps: 5));
    testWorkout.excercises[1].addSet(Set(weight: 10, reps: 12));
    testWorkout.excercises[1].addSet(Set(weight: 20, reps: 7));
    
  }
  void workoutAddExcercise(){
    testWorkout.addExcercise(excercise: Excercise(name: 'test', muscleGroup: 'chest'));
  }

  @override
  Widget build(BuildContext context) {
  
    
    return (Scaffold(
      
      body: Container(
        child: testWorkout.toWidget(),
      ),

      floatingActionButton:
          FloatingActionButton(onPressed: workoutAddExcercise,
            child: Icon(Icons.add),
          ),
    ));
  }
}
