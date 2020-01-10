import 'package:contact_app/screens/homepage.dart';
import 'package:flutter/material.dart';

class Create extends StatefulWidget {
  final String appbartitle;
  Create({Key key, @required this.appbartitle}) : super(key: key);
  _CreateState createState() => _CreateState(appbartitle: appbartitle);
}

class _CreateState extends State<Create> {
  String appbartitle;
  _CreateState({Key key, @required this.appbartitle});

  TextEditingController title = TextEditingController();
  TextEditingController description = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbartitle),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
              child: TextField(
                controller: title,
                decoration: InputDecoration(
                    labelText: "Title",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
              child: TextField(
                controller: description,
                decoration: InputDecoration(
                    labelText: "Decription",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
              ),
            ),
            Container(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      height: 40.0,
                      minWidth: 150,
                      color: Colors.blue,
                      child:
                          Text("Save", style: TextStyle(color: Colors.white)),
                      onPressed: () {},
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      height: 40.0,
                      minWidth: 150,
                      color: Colors.red,
                      child: Text(
                        "Delete",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: ()=> _savebtn,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  _savebtn(String title, String description) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context)=> HomePage(
        title: title,
        description: description,
      )
    ));
  }
}
