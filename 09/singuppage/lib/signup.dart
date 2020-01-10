import 'package:flutter/material.dart';
import 'homepage.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  GlobalKey<FormState> _key = new GlobalKey();
  // bool _autovalidate = false;
  String name, email, mobile, collegename;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: Text("signup"),
      ),
      body: Form(
        key: _key,
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
                image: AssetImage(""),
                width: 100.0,
                height: 100.0,

              ),
              ListTile(
                leading: Icon(Icons.person),
                title: TextFormField(
                  validator: (input){
                    if (input.isEmpty){
                      return 'enter name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: 'Name'),
                  onSaved: (input)=> name = input,
                ),
              ),
              
              ListTile(
                leading: Icon(Icons.person),
                title: TextFormField(
                  validator: (b){
                    if (b.isEmpty){
                      return 'Email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: 'Email'),
                  onSaved: (b)=> email = b,
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: TextFormField(
                  validator: (c){
                    if (c.isEmpty){
                      return 'Mobile no.';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: 'Mobile no.'),
                  onSaved: (c)=> mobile = c,
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: TextFormField(
                  validator: (d){
                    if (d.isEmpty){
                      return 'College Name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(labelText: 'College name'),
                  onSaved: (d)=> collegename = d,
                ),
              ),
              MaterialButton(
                color: Colors.red,
                child: Text("Next Page"),
                onPressed: _sendtonextScreen,
              )
            ],
          ),
        ),
      ),

     
      
    );
  }
   _sendtonextScreen(){
     if (_key.currentState.validate()){
       _key.currentState.save();
       Navigator.push(
         context, MaterialPageRoute(
           builder: (context) => Homepage(
             name: name,
             mobile: mobile,
             email:email,
             collegename: collegename,
           )
         )
         );

     }
     else 
     setState(() {
       
     });
   }
}


// drop down menu