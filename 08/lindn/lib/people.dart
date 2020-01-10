import 'package:flutter/material.dart';


class People extends StatefulWidget {
  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
              padding: EdgeInsets.only(top: 20.0,left: 20.0),
              child: Card(
                shape: Border.all(color: Colors.grey),
                              child: Column(
                  children: <Widget>[
                    Container(
            height: 260.0,
            width: 160.0,
            
            child: Column(
                    children: <Widget>[
                      Stack(
                    children: <Widget>[
                      Column(
                    children: <Widget>[
                      Container(
                        height: 70.0,
                        color: Colors.lightBlue,
                      )
                    ],
            ),
            Padding(
                    padding: EdgeInsets.only(top: 20.0,left: 25),
                    child: ClipOval(
                    child: Container(
                      color: Colors.white,
                      child: Image.asset("image/my.jpg"),
                      height: 100.0,
                      width: 100.0,
                    ),
                    ),
                    ),
            Padding(
                    padding: EdgeInsets.only(top: 6.0, left: 130.0),
                    child: Icon(Icons.close),
                    )  
                    ],
                    ),
                    Container(
                      height: 5.0,
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          
                          Text("Abdul Samad Ansari", style: TextStyle(fontWeight: FontWeight.bold),),
                          Container(
                          height: 5.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 18.0),
                            child: Text("Learn Code Online, Jaipur , Jagatpura"),),
                            Container(
                          height: 10.0,
                          ),
                            Padding(
                            padding: EdgeInsets.only(left: 4.0),
                            child: Text("Based On Your Profile"),),
                            Container(
                          height: 5.0,
                          ),
                          OutlineButton(
                            borderSide: BorderSide(
                              color: Colors.blue),
                            child: Text("CONNECT",style: TextStyle(color: Colors.blue,fontSize: 18.0),),
                            onPressed: (){},
                          )
                        ],
                      ),
                    )
                                ],
                              )
            
                            ),
                  ],
                ),
              ),
                  ),
            
              ],
            ),
            
          ],
        ),
      ),
      
      
    );
  }
}