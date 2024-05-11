import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentations/screens/counter_funtions_screen.dart';

void main() {
  //en flutter el main simpre ejecuta nuestra app principal
  //con el metodo run app
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  //sirve para identificar el witget dentro del arbol de witget
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: const CounterFuntionScreen(),
    );
  }
}
