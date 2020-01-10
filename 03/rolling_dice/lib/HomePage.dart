import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var sam= "/1.jpg";
  var sam1="/1.jpg";
  var sam2="/1.jpg";
  foz(){
    var ran=Random().nextInt(6)+1;
    setState(() {
     switch (ran.toString()) {
       case "1":
         sam= "/1.jpg";
         break;
         case "2":
         sam= "/2.jpg";
         break;
         case "3":
         sam= "/3.jpg";
         break;
         case "4":
         sam= "/4.jpg";
         break;
         case "5":
         sam= "/5.jpg";
         break;
         case "6":
         sam= "/6.jpg";
         break;

       default:
     } 
    });
  }
  secbtn(){
    var ran1=Random().nextInt(6)+1;
    var ran2=Random().nextInt(6)+1;
    setState(() {
     switch (ran1.toString()) {
       case "1":
         sam1= "/1.jpg";
         break;
         case "2":
         sam1= "/2.jpg";
         break;
         case "3":
         sam1= "/3.jpg";
         break;
         case "4":
         sam1= "/4.jpg";
         break;
         case "5":
         sam1= "/5.jpg";
         break;
         case "6":
         sam1= "/6.jpg";
         break;

       default:
     } 
    });
    setState(() {
     switch (ran2.toString()) {
       case "1":
         sam2= "/1.jpg";
         break;
         case "2":
         sam2= "/2.jpg";
         break;
         case "3":
         sam2= "/3.jpg";
         break;
         case "4":
         sam2= "/4.jpg";
         break;
         case "5":
         sam2= "/5.jpg";
         break;
         case "6":
         sam2= "/6.jpg";
         break;

       default:
     } 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 250.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20.0),
                    ),
                  child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Container(
              height: 150.0,
              child: Image.asset("dice"+ sam),
              ),
              Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: RaisedButton(
                  child: Text("Dice Change", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                  color: Colors.green,
                  onPressed: foz,
                ),
              ),
            ],
          )
              ],
              ),
            
              
            
              ),  
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 45.0),
            child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 250.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20.0),
                    ),
                  child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
              height: 100.0,
              child: Image.asset("dice"+ sam2),
              
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Container(
                
              height: 100.0,
              child: Image.asset("dice"+ sam1),
              
              ),
              )
                  ],
                ),
              Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: RaisedButton(
                  child: Text("Dice Change", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                  color: Colors.green,
                  onPressed: secbtn,
                ),
              ),
            ],
          )
              ],
              ),
            
              
            
              ),  
              ],
            ),
          ),
          )
          
        ],
      )
      
    );
  }
}