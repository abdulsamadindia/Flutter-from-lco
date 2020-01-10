import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
              
          child: Container(
              height:450.0 ,
              width: double.infinity,
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              
                ],
              ),
            ),
            
            clipper: new MyClipper(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 225.0),
              child:   Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipOval(
                    
                  child: Container(
                    child: Image.asset("image/1.png"),
                  height: 100.0,
                  width: 100.0,
                  color: Colors.blue,
                   ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 340.0),
              child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text("Team Foz",style: TextStyle(fontSize: 40.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),),
                    Text("Programmers",style: TextStyle(fontSize: 20.0,
                    fontStyle: FontStyle.italic),)
                  ],
                ),              ),
            ),
             Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("12.5k",style: TextStyle(fontSize: 20.0,
                    fontStyle: FontStyle.italic,),),
                    Text("360k",style: TextStyle(fontSize: 20.0,
                    fontStyle: FontStyle.italic),),
                    Text("650k",style: TextStyle(fontSize: 20.0,
                    fontStyle: FontStyle.italic),)
                  ],
                ), 
                ),
            ),
             Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text("Projects",style: TextStyle(fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),),
                    Text("Applications",style: TextStyle(fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),),
                    Text("Reports",style: TextStyle(fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold),)
                  ],
                ), 
                ),
            ),
                         Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: Container(
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 60.0),
                  child: Text("Follow now", style: TextStyle(fontSize: 20.0,color: Colors.white),),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                  color: Colors.blue,
                  onPressed: (){},
                )
                ),
            ),
                ],
              ),
            )
,
            )


              ],
            )
            
            
              
            
            
            
            
          ],
        ),
      ),
      
    );
  }
}


class MyClipper extends CustomClipper <Path>{
@override
 Path getClip(Size size){

   var path = new Path();
   path.lineTo(0.0, size.height);
   path.lineTo(size.width, 100.0);
   path.lineTo(size.width, 0.0);
   path.close();
   return path;
 }
 @override
 bool shouldReclip(CustomClipper<Path>oldClipper)=>false; 

}