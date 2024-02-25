import 'Tracker.dart';
import 'model/Excercise.dart';
import 'model/Set.dart';
import 'model/Workout.dart';

void main(){
  Workout test = Workout(trainingName: 'new training');
  test.addExcercise(excercise: Excercise(name:'biceps  curls', muscleGroup: 'arms'));
  test.addExcercise(excercise: Excercise(name: 'bench press', muscleGroup: 'chest'));
  test.excercises[0].addSet(Set( weight: 10, reps: 12));
  test.excercises[0].addSet(Set( weight: 20, reps: 5));

  test.excercises[1].addSet(Set( weight: 10, reps: 12));
  test.excercises[1].addSet(Set( weight: 20, reps: 7));

  print(test.excercises);
  test.exportToCsv();
}
