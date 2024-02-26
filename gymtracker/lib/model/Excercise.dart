import 'Set.dart';
import 'package:flutter/material.dart';

class Excercise {
  String? name;
  String muscleGroup;
  String? notes;
  List<Set> sets = [];

  Excercise({required this.name, required this.muscleGroup});

  @override
  String toString() {
    return 'Name: $name, Musclegroup: $muscleGroup, Sets: \n ${sets.map((element) {
      element.toString();
    })}';
  }

  void addSet(Set set) {
    sets.add(set);
  }

  List<String> toCsv() {
    List<String> result = [];
    String prefix = '${name},${notes ?? ' '},';
    for (int i = 0; i < sets.length; i++) {
      result.add(prefix + sets[i].toCsv(i));
    }
    return result;
  }

  Widget toWidget(){
    return (
      Column(
        children: [
          Row(
            children: [
              Icon(Icons.fitness_center),
              Text(name??'none'),
              
            ],
          ),
          Text(notes??''),
          ListView(
            children: [...sets.map((e) => e.toWidget(),)],
          ),
        ],
      )

    );
  }
  
}
