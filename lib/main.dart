import 'package:flutter/material.dart';
import 'package:firebasedemo/Pages/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Firebase Demo",
      theme: ThemeData(primarySwatch: Colors.green),
      home: SignUp(),
      debugShowCheckedModeBanner: false,
    );
  }
}
