import 'package:contact_app/screens/createcont.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  final String description;
  HomePage({
  Key key,@required this.title, this.description
    }): super (key:key);
  @override
  _HomePageState createState() => _HomePageState(title:title, description:description);
}

class _HomePageState extends State<HomePage> {
  String title;
  String description;
  _HomePageState ({Key key, @required this.title, this.description});
  var counter =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact App"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: counter,
          itemBuilder: (BuildContext ctx, int){
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                title: Text("Sameer"),
                subtitle: Text("11 febuary"),
                trailing: Icon(Icons.delete),
                onTap: (){
                gotocreatepage('Edit Contact');
                },
              ),
            );
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        gotocreatepage('Add Contact');
        },
        tooltip: 'Add note',
        child: Icon(Icons.add),
      ),
    );
  }
  gotocreatepage(String appbartitle){
      Navigator.push(context, MaterialPageRoute(
            builder: (context){
            return Create(
              appbartitle:appbartitle,
            );
            }));
  }
}