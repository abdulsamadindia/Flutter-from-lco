import 'dart:math';

import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
   int amm = 0;
   var nxttime= "";
   

   

   var l = [7,64,32,84,98,122,12,0];
    int aj = 0;
    add(int index){
    
      setState(() {
         amm = amm + l[index];
          if (l[index]==0){
       nxttime="better luck next time";
     }
      });
    }
   changeamount(){

    
   
      setState(() {
 
       
     });
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 200.0,
              width: double.infinity,
              color: Colors.yellow,
              child: Padding(
                padding: EdgeInsets.only(top: 100.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Row(
                        children: <Widget>[
                          Text("$amm", style: TextStyle(fontSize: 50.0,fontWeight: FontWeight.bold),)
                        ],
                      ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Row(
                        children: <Widget>[
                          Text("Total Reward", style: TextStyle(fontSize: 30.0),)
                        ],
                      ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext ktp, index) {
                  return Scratcher(
                    brushSize: 100,
                    threshold: 20,
                    color: Colors.blue,
                    
                    onChange: (amount) {
                     // print("Scratch progress: $%");
                    },
                    onThreshold: () {
                         changeamount();
                         add(index);
                    },
                    child: Container(
                      alignment: Alignment.center,

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                        "${l[index]}",style: TextStyle(fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                          ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                 nxttime,style: TextStyle(fontSize: 15.0,
                                    color: Colors.white,
                                    ),
                          ),
                              ],
                            ),
                          ],
                      ),
                      height: 150.0,
                      width: 150.0,
                      color: Colors.green,

                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
