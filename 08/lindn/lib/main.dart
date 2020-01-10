import 'package:flutter/material.dart';
import 'package:lindn/homepage.dart';
import 'package:lindn/people.dart';

void main(List<String> args) {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      
      title: "Linkdn",
      routes: <String , WidgetBuilder>{
        "/category":(BuildContext context)=>People()
      },
    home: HomePage(),      
    );
  }
}