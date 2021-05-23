import 'package:demo/Pages/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo",
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}
