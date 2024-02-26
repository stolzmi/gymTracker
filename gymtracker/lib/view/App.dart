import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gymtracker/model/Excercise.dart';
import 'package:gymtracker/model/Set.dart';
import 'package:gymtracker/model/Workout.dart';
import 'package:gymtracker/view/Trainingview.dart';


class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print('hei');
    }
    return const MaterialApp(
      title: 'Test',
      debugShowCheckedModeBanner: false,
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({
    super.key,
    required this.title,
  });

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  Workout test = Workout(trainingName: 'test');
  
  static var trainings = [
     Excercise(muscleGroup: 'Arms',  name: 'Curls'),
     Excercise(muscleGroup: 'Chest', name:'Pushups')
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> _widgetOptions = <Widget>[
      Text('test'),
      Trainingview(),
    
    ];
    // ignore: non_constant_identifier_names

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.auto_graph_outlined), label: 'Dashboard'),
          BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center), label: 'Training'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
