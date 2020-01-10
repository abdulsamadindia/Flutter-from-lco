import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login/screen/loginpage.dart';

class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  final GlobalKey<FormState> _formkey = GlobalKey();
  bool _autovalidate = false;
  String name, email, mobile, collegename, _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: new AppBar(title: Text("Signup")),
        body: Form(
          key: _formkey,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage(""),
                  width: 100,
                  height: 100,
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return "enter Passward";
                      }
                      return null;
                    },
                    decoration: InputDecoration(labelText: "password"),
                    onSaved: (input) => _password = input,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return "enter email";
                      }
                      return null;
                    },
                    decoration: InputDecoration(labelText: "Email"),
                    onSaved: (input) => email = input,
                  ),
                ),
                ButtonTheme(
                  height: 40,
                  minWidth: 200,
                  child: RaisedButton(
                    onPressed: () => signup(),
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.lightBlue,
                  ),
                )
              ],
            ),
          ),
        ));
  }

  /*
  _sendToNextScreen(){
    if(_key.currentState.validate()){
      _key.currentState.save();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(
            
            name: name,
            mobile: mobile,
            email: email,
            collegename: collegename
          )
        )
      );
    }else{
      setState(() {
        _autovalidate = true;
      });
    }
  }
*/
  void signup() async {
    if (_formkey.currentState.validate()) {
      _formkey.currentState.save();
      try {
        FirebaseAuth _auth = await FirebaseAuth.instance;
        FirebaseUser user;
        user = (await _auth.createUserWithEmailAndPassword(
                email: email, password: _password))
            .user;
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Login(),
            ));
      } catch (e) {
        print(e);
      }
    }
  }
  /* void signinpage() async
  {
    Navigator.pushReplacement(context, MaterialPageRoute(builder:  ());
  }*/
}
