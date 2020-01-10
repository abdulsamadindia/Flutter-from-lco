import 'package:flutter/material.dart';
import 'package:lindn/bag.dart';
import 'package:lindn/friend.dart';
import 'package:lindn/home.dart';
import 'package:lindn/notification.dart' as prefix0;
import 'package:lindn/people.dart';





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
      return People();
      case 2:
      return Friend();
      case 3:
      return prefix0.Notification();
      case 4:
      return Bag();

        
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Linkedin"),
      ),
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
            icon: Icon(Icons.home),
            title: Text("") ),
            BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text(""),),
            BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            title: Text(""),),
            BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text(""),),
            BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            title: Text(""),
          ),
        ],
      ),
      
    );
  }
}