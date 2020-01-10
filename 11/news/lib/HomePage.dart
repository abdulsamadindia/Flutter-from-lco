import 'package:flutter/material.dart';
import 'package:news/Home.dart';
import 'package:news/category.dart';
import 'package:news/last.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  
  

   int _buttonNevi=0;
  Widget nextPage (int currentIndex){
    switch (currentIndex) {
      case 0:
      return Home();
      case 1:
      return Category();
      case 2:
      return Last();
      case 3:
      break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      
      body: nextPage(_buttonNevi),
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _buttonNevi,
        onTap: (value){
          _buttonNevi=value;
          setState(() {
            
          });
        },
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30.0),
            title: Text("Home") ),
            BottomNavigationBarItem(
            icon: Icon(Icons.category, size: 30.0),
            title: Text("Category"),),
            BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 30.0,),
            title: Text("About"),),
            
        ],
      ),
      
    );
  }
}