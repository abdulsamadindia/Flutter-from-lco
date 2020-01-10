import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:login/Singup.dart';

class HomePage extends StatefulWidget {
  FirebaseUser user;
  HomePage({Key key, @required this.user}):super(key:key);
  @override
  _HomePageState createState() => _HomePageState(user: user);
}

class _HomePageState extends State<HomePage> {
  FirebaseUser user;
  _HomePageState({Key key, @required this.user});
  void logout() async{
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Signup()));
  }
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home"),),
      body: Column(children: <Widget>[
        Text('${widget.user.email}'),
        OutlineButton(child: Text("Log Out"),
        onPressed: ()=> logout(),
        )
      ],)
    );
  }
}