import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:splashscreen/splashscreen.dart';
import 'HomePage.dart';
import 'Singup.dart';
class CheckAuth extends StatefulWidget {
  @override
  _CheckAuthState createState() => _CheckAuthState();
}

class _CheckAuthState extends State<CheckAuth> {
    bool isloggedIn;
    var users;
  @override
  void initState(){
      isloggedIn = false;
      FirebaseAuth.instance.currentUser().then((user)=> !null
      ? setState((){
        isloggedIn = true;
        users = user;
      })
      :null);
      super.initState();
    }
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds:10,
        navigateAfterSeconds: isloggedIn ? new HomePage(user: users): Signup(),
        styleTextUnderTheLoader: new TextStyle(),
        imageBackground: NetworkImage("https://www.gstatic.com/mobilesdk/160503_mobilesdk/logo/2x/firebase_28dp.png"),
       loaderColor: Colors.transparent,
     
    );
  }
}