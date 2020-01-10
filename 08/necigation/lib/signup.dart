import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text("Sign Up page"),
      ),
      body: Column
          (
           mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>
            [
                Text("Welcome in Team Foz",
                style: TextStyle(
                  color: Colors.white, 
                    fontStyle: FontStyle.italic),),
                    
                  Padding
                    (
                    padding: EdgeInsets.only(top:10),
                    child: Container(
                    padding: EdgeInsets.all(20.0),
                    height: 370.0,
                    width: 300.0,
        
              decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(20.0),
                    ),
            child: SingleChildScrollView(
            child: Column(
                
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 12.0
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Your Email",
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: InputBorder.none
                      ),
                      ),
                      ),
                      TextField(
                        
                        autocorrect: false,
                      decoration: InputDecoration(
                        hintText: "Mobile No.",
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.number,
                      ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "User Name",
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: InputBorder.none
                      ),
                      ),
                      ),
                  
                      TextField(
                        obscureText: true,
                        autocorrect: false,
                      decoration: InputDecoration(
                        hintText: "Password",
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.number,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12.0),
                        child: TextField(
                        obscureText: true,
                        autocorrect: false,
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.number,
                      ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            MaterialButton(
                              color: Colors.blue,
                              minWidth: 250.0,
                              padding: EdgeInsets.symmetric(
                                vertical: 12.0
                              ),
                              child: Text("Create Account",
                              style: TextStyle(
                                color: Colors.white, 
                                fontSize: 16),),
                              onPressed: (){},
                            )
                            
                          ],
                        ),
                      )
                   ],
                 ),
            ),
             ) 
          ),
                       Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          MaterialButton(
                            color: Colors.blueGrey,
                            
                            minWidth: 280.0,
                            padding: EdgeInsets.symmetric(
                            vertical: 12.0
                            ),
                            child: Text('Already Account "Login"',style: TextStyle(
                            color: Colors.white, fontSize: 16),),
                            onPressed: (){},
                          )
                        ],
                      ),
                    )
        ],
      )
    );
  }
}