import 'package:flutter/material.dart';
import 'package:twitter_clone/screen/Home.dart';
import 'package:twitter_clone/screen/Search.dart';
import 'package:twitter_clone/screen/inbox.dart';
import 'package:twitter_clone/screen/notification.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  var _currentindex = 0;
  var page = [
    Home(),
    Search(),
    Noti(),
    Inbox(),
  ];
  void ontapped(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        onTap: ontapped,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.red,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("",style: TextStyle( fontSize: 1.0))),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("",style: TextStyle( fontSize: 1.0))),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), title: Text("",style: TextStyle( fontSize: 1.0))),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail_outline), title: Text("",style: TextStyle( fontSize: 1.0))),
        ],
      ),
    );
  }

  ontab(int index) {
    setState(() {
      _currentindex = index;
    });
  }
}
