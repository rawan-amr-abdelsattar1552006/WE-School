import 'package:flutter/material.dart';
import 'package:we_school/screens/choices_screen.dart';
import 'package:we_school/screens/home_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        
        fontFamily: "Cairo"
      ),
      home:  HomeScreen(),
    );
  }
}

