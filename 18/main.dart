import 'package:flutter/material.dart';
import 'package:login/screen/homepage.dart';
import './screen/signuppage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: signup(),
      
    );
  }
}