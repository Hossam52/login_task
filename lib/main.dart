import 'package:flutter/material.dart';
import 'package:task_flutter/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Task Flutter',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
        home: WelcomeScreen());
  }
}
