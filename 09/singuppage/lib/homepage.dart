import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  final String name, mobile, email, collegename;

  Homepage({Key key, @required this.name, this.mobile, this.email, this.collegename}): super (key: key);

  @override
Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: Text("Student Information"),
      ),
      body: Form(
        
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              Image(
                image: AssetImage("assets/lcologo.png"),
                width: 100.0,
                height: 100.0,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(name)
                  
                 ,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(email)
                  
                 ,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(mobile)
                  
                 ,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(collegename)
                  
                 ,
              ),
              MaterialButton(
                onPressed: (){},
              )
            ],
          ),
        ),
      ),

     
      
    );
  }
}