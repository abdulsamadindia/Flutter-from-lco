import 'package:flutter/material.dart';
import 'package:news/Sports.dart';
import 'package:news/buss.dart';
import 'package:news/coin.dart';
import 'package:news/sport.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black,
          // child: Card(
            
          //   color: Colors.black,
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(20.0),
          //   ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20.0,),
                  child: MaterialButton(
                    color: Colors.red,
                    height: 60.0,
                    minWidth: 270.0,
                    child: Text("Bussines",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,color: Colors.white),),
                    onPressed: (){
                    
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bussines()),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0,),
                  child: MaterialButton(
                    color: Colors.red,
                    height: 60.0,
                    minWidth: 270.0,
                    child: Text("Cricket",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,color: Colors.white),),
                    onPressed: (){
                      
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sport()),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0,),
                  child: MaterialButton(
                    color: Colors.red,
                    height: 60.0,
                    minWidth: 270.0,
                    child: Text("Sports",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,color: Colors.white),),
                    onPressed: (){
                      
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sports()),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0,),
                  child: MaterialButton(
                    color: Colors.red,
                    height: 60.0,
                    minWidth: 270.0,
                    child: Text("Bit-Coin",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold,color: Colors.white),),
                    onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Bitcoin()),
                      );
                    }
                  ),
                ),
              ],
            ),
          // ),

        ),
      )
        
      
    );
  }
  // _sendtonextScreen(){
     
  //      Navigator.push(
  //        context, MaterialPageRoute(
  //          builder: (context) => Bussines(
             
             
  //          )
  //        )
  //        );
  //    }
}

