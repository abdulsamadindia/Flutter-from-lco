import 'package:flutter/material.dart';
import 'package:to_do_with_firebase/screen/addnote.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To do List"),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
        gotocreatepage();
        },
      ),
    );
  }
  gotocreatepage(){
      Navigator.push(context, MaterialPageRoute(
            builder: (context){
            return Addnote(
              
            );
            }));
  }
}