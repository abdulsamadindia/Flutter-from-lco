import 'package:flutter/material.dart';
import 'package:singuppage/signup.dart';

void main(List<String> args) {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "userDetails",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Signup(),
    );
  }
}