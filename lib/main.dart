import 'package:flutter/material.dart';
import 'package:strete_workout/getting_started.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Street Yoga App Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: const GettingStartedPage(),

    );
  }
}

