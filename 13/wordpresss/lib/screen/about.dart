import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:wordpresss/screen/privacy.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      title: Text("About us"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){},
        ),

      ],
    ), 
      body: Container(
        child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                  color: Colors.lightBlue,
                  height: 50.0,
                  minWidth: 250.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Text("Login", 
                  style: TextStyle(fontSize: 35.0, 
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),),
                  onPressed: (){},
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: MaterialButton(
                  color: Colors.red,
                  height: 50.0,
                  minWidth: 250.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Text("Sign-up", 
                  style: TextStyle(fontSize: 35.0, 
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),),
                  onPressed: (){},
                ),
                ),
                Row(
                  children: <Widget>[
                  Padding(
                  padding: EdgeInsets.only(top: 20.0,left: 20.0),
                  child: MaterialButton(
                  color: Colors.green,
                  height: 50.0,
                  minWidth: 150.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Text("Rate-us", 
                  style: TextStyle(fontSize: 25.0, 
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),),
                  onPressed: (){},
                ),
                ),  
                Padding(
                  padding: EdgeInsets.only(top: 20.0,left: 20.0),
                  child: MaterialButton(
                  color: Colors.pinkAccent,
                  height: 50.0,
                  minWidth: 150.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Text("More Apps", 
                  style: TextStyle(fontSize: 25.0, 
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),),
                  onPressed: (){},
                ),
                ),  
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0,),
                  child: MaterialButton(
                  color: Colors.brown,
                  height: 50.0,
                  minWidth: 150.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: Text("Share App", 
                  style: TextStyle(fontSize: 25.0, 
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),),
                  onPressed: ()=>Share.share('Download News App https://play.google.com/store/apps/details?id=in.learncodeonline.lco'),
                ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: GestureDetector(
                    child: Text("Privacy Policy",style: TextStyle(color: Colors.red),),
                    onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Privacy())),
                  ),
                ),
            ],
          ),
        ),
      ),
      
    );
  }
}