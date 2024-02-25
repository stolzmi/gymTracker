import 'dart:io';

import 'model/Excercise.dart';

class Printer{
  static void printWhatToDo(){
    print("What do you want to do?\n[1] Add excercise \n[2] Edit excercises \n[3] End Workout");
  }
  static void printWhichExcercise(List<Excercise> excercises){
    print('Which excercise do you want to edit?');
    for(int i = 0; i < excercises.length; i++){
      print('[${i+1}}]: ${excercises[i].name}');
    }
  }

}

class Inputhandler{
  static int askForNumberUpTo(int limit){
    print('Enter a number between 0-${limit}');
    int? n = int.parse(stdin.readLineSync()!);
    return n ;
  }

}