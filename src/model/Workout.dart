import 'dart:convert';
import 'dart:io';
import 'Converter.dart';
import 'Excercise.dart';


class Workout {
  List<Excercise> excercises = [];
  String trainingName;
  var startTime;
  Workout({required this.trainingName});

  void addExcercise({required Excercise excercise}) {
    excercises.add(excercise);
    startTime = DateTime.now();
  }

  void startWorkout(){
    
  }

  void exportToCsv(){
    var endTime = DateTime.now();
    File file = File('./src/workouts.csv');
    String prefix = '${trainingName},${Converter.convertDateTimeToString(startTime)},${Converter.convertDateTimeToString(endTime)},';
    List<String> result = [];
    for(Excercise excercise in excercises){
      result.addAll(excercise.toCsv());
    }
    List<String> before =  file.readAsLinesSync();
    String legend = before[0];
    before.removeAt(0);
    var sink = file.openWrite();
    sink.writeln(legend);
    result.forEach((element) {sink.writeln( prefix + element);});
    before.forEach((element) {sink.writeln(element);});
    sink.close();
  }


}
