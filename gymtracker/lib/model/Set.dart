import 'package:flutter/material.dart';

class Set {
  int reps;
  int weight;
  int? volume;

  Set({required this.reps, required this.weight}) {
    volume = reps * weight;
  }

  @override
  String toString() {
    return 'Reps: $reps, weight: $weight, volume: $volume';
  }

  String toCsv(int index) {
    return '$index,$reps,$weight';
  }
  Widget toWidget(){
    return (
      Row(children: [
        Text(weight.toString()),
        Text(reps.toString())
      ],)
    );
  }
}
