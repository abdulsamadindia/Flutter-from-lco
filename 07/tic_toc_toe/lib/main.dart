import 'package:flutter/material.dart';
import 'package:tic_toc_toe/homepage.dart';
 void main(List<String> args) {
   runApp(MyApp());
 }

 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: HomePage(),
       theme: ThemeData.dark(),
     );
   }
 }