
import 'package:flutter/material.dart';
import 'package:necigation/Category.dart' as prefix0;
import 'package:necigation/loginpage.dart';
import 'package:necigation/profile.dart';
import 'package:necigation/signup.dart';
import 'homepage.dart';


void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: <String , WidgetBuilder>{
        "/category":(BuildContext context)=>prefix0.Category(),
        "/login":(BuildContext context)=>Login(),
        "/signup":(BuildContext context)=>Signup(),
        "/profile":(BuildContext context)=>Profile()
      },
      // routes: <String , WidgetBuilder>{
      //   
      // }

      
    );
  }
}