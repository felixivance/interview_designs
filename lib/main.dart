import 'package:flutter/material.dart';
import 'package:interview_designs/config/constants.dart';
import 'package:interview_designs/screens/mainScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interview Designs',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: Color(0xFFF8F8F8),
        textTheme: Theme.of(context).textTheme.apply(displayColor: BlueColor),
      ),
      home: MainScreen(),
    );
  }
}

