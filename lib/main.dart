// import 'package:demo/Pages/HomeScreen.dart';
import 'package:demo/Pages/SignUp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo",
      home: SignUp(),
      theme: ThemeData(primarySwatch: Colors.green, ),
    );
  }
}
