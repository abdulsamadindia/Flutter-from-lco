import 'package:flutter/material.dart';
import 'package:phonepe/Apps.dart';
import 'package:phonepe/History.dart';
import 'package:phonepe/Store.dart';
import 'package:phonepe/home.dart';
import 'package:phonepe/mymoey.dart';

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
      return Store();
      case 2:
      return Apps();
      case 3:
      return MyMoney();
      case 4:
      return History();

        
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xff673ab7),
            leading: Icon(Icons.people),
          actions: <Widget>[
               Padding(
                 padding: EdgeInsets.only(right: 20),
                 child: Row(
                    
                   children: <Widget>[
                     Icon(Icons.gradient,size: 30,),
                       
                      Icon(Icons.notifications,size: 30,),
                      Icon(Icons.help_outline,size: 30,),
                      
                   ],
                 ),
               ),
          
          ],
        title: Text("your location \n jaipur  ",style: TextStyle(fontSize: 13),
               
        ),
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
            title: Text("Home") ),
            BottomNavigationBarItem(
            icon: Icon(Icons.store),
            title: Text("store"),),
            BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            title: Text("Apps"),),
            BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            title: Text("My Money"),),
            BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text("history"),
          ),
        ],
      ),
      
    );
  }
}