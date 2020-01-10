import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      

      body: Container(
        child: ListView.builder(
          
         itemCount: 8,
         itemBuilder: (BuildContext ctx, index)=>
          Card(
        shape: Border.all(color: Colors.grey),
                      child: Container(
        child: Column(
            children: <Widget>[
              
             Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(10.0),
                        
                        child: Column(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(right: 10.0),
                                  child: CircleAvatar(
                                    
                                    backgroundColor: Colors.transparent,
                                    child: Image.asset("image/my.jpg"),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(bottom: 5.0),
                                      child: Text(
                                        "Abdul Samad Ansari",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(bottom: 3.0),
                                      child: Text(
                                        "1.6B Follwers",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Promoted",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    
                                  ],
                                ),
                              ],
                            ),
                              Padding(
                                padding: EdgeInsets.only(top: 18.0, left: 220.0),
                                child:Row(
                              children: <Widget>[
                                Text("Follow", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),)
                              ],
                            ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 6.0, left: 300.0),
                                child:Row(
                              children: <Widget>[
                                Icon(Icons.arrow_drop_down)
                              ],
                            ),
                              )
                              ],
                            ),
                            Container(
                              height: 10.0,
                            ),
                          Container(
                              height: 1.0,
                              color: Colors.grey[300],
                              ),
                            Container(
                              height: 10.0,
                            ),
                            Text(
                                "Stay focused, ingnore the distractions, and you will accomplish your goals much faster"),
                            Container(
                              height: 10.0,
                            ),
                            Image.asset("image/2.jpg"),
                            Container(
                              height: 10.0,
                            ),
                            Row(
                              children: <Widget>[

                                Image.asset("image/like.png",height: 20.0, width: 20.0,),
                                // Icon(Icons.thumb_up),
                                Container(
                                  width: 5,),
                                  Image.asset("image/clap.png",height: 20.0, width: 20.0,),
                                Container(
                                  width: 5,),
                                  Image.asset("image/love.png",height: 20.0, width: 20.0,),
                                Container(
                                  width: 10.0,),
                                  Text("792,647", style: TextStyle(color: Colors.grey),),
                                                                Container(
                                  width: 90.0,),
                                  Text("202,62 Coments", 
                                  style: TextStyle(color: Colors.grey),),
                                  
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 1.0,
                        color: Colors.grey[300],
                      ),
                      Container(
                        height: 50.0,
                        color: Colors.white,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.thumb_up),
                                  Container(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: Text("Like"),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.comment),
                                  Container(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: Text("Comment"),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.share),
                                  Container(
                                    padding: EdgeInsets.only(left: 5.0),
                                    child: Text("Share"),
                                  ),
                                ],
                              ),
                            ),
                            
                          ],
                        ),
                        
                      ),
                      // Column(
                      //   children: <Widget>[
                      //     Container(
                      //       height: 20.00,
                      //       color: Colors.grey,)
                          
                      //   ],
                      // )
                
                ],
            ),
            ),
          ),
         
        ),
      ),
      
    );
  }
}