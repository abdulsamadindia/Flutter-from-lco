import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nevigation"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Abdul Samad") ,
              accountEmail: Text("sameerahmad.asa.2016@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("Photo"),
              ),),
              ListTile(
                title: Text("Home"),
                trailing: Icon(Icons.home),
              ),
              ListTile(
                title: Text("My Profile"),
                trailing: Icon(Icons.person),
                onTap: ()=>Navigator.of(context).pushNamed("/profile"),
              ),
              ListTile(
                title: Text("Category"),
                trailing: Icon(Icons.category),
                onTap: ()=>Navigator.of(context).pushNamed("/category"),
              ),
              ListTile(
                title: Text("About us"),
                trailing: Icon(Icons.picture_in_picture),
              ),
              ListTile(
                title: Text("Contact us"),
                trailing: Icon(Icons.contacts),
              ),
              ListTile(
                title: Text("Login"),
                trailing: Icon(Icons.person),
                onTap: ()=>Navigator.of(context).pushNamed("/login"),
              ),
              ListTile(
                title: Text("Sign Up"),
                trailing: Icon(Icons.person_add),
                onTap: ()=>Navigator.of(context).pushNamed("/signup"),
              ),
              Divider(

              ),
              ListTile(
                title: Text("Close"),
                trailing: Icon(Icons.exit_to_app),
                onTap: ()=>Navigator.of(context).pop(),
              ),
          ],
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Home Page")
          ],
        ),
      ),


      
    );
  }
}