import 'package:flutter/material.dart';
import 'package:wordpresss/screen/about.dart';
import 'package:wordpresss/screen/category.dart';
import 'package:wordpresss/screen/home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   var _currentindex=0;
  var page=[
    Home(),
    Category(),
    About()
  ];
  void ontapped(int index){
    setState(() {
     _currentindex=index; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
    
    bottomNavigationBar: BottomNavigationBar(

        currentIndex: _currentindex,
        onTap: ontapped,
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
      body: page[_currentindex],
    );
    
  }
  
}