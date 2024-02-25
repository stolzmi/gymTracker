import 'Frontend.dart';
import 'model/Workout.dart';

class Tracker{
  void startTraining(){
    Workout workout = Workout(trainingName: 'new Training');
    Printer.printWhatToDo();
    print(Inputhandler.askForNumberUpTo(3));
  }
}