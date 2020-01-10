import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FullDetails extends StatefulWidget {
  String location;
  String name;
  String crime;
  String evidence;
  String suspect;
  String suggestion;
  String help;
  String date;
  FullDetails(
      {Key key,
      @required this.name,
      this.location,
      this.crime,
      this.evidence,
      this.suspect,
      this.suggestion,
      this.help,
      this.date})
      : super(key: key);
  @override
  _FullDetailsState createState() => _FullDetailsState(
      name: name,
      location: location,
      crime: crime,
      evidence: evidence,
      suspect: suspect,
      suggestion: suggestion,
      help: help,
      date: date);
}

class _FullDetailsState extends State<FullDetails> {
  String location;
  String name;
  String crime;
  String evidence;
  String suspect;
  String suggestion;
  String help;
  String date;
  _FullDetailsState(
      {Key key,
      @required this.name,
      this.location,
      this.crime,
      this.evidence,
      this.suspect,
      this.suggestion,
      this.help,
      this.date});
  final String url = "http://userapi.tk/shobhit/data";
  List data;
  bool isloading = true;
  @override
  void initState() {
    super.initState();
    this.getjsondata();
  }

  Future getjsondata() async {
    var response = await http.get(Uri.encodeFull(url));
    setState(() {
      var converdatatojason = json.decode(response.body);
      data = converdatatojason;
      isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Full"),
      ),
      body: Center(
        child: Container(
            child: isloading
                ? CircularProgressIndicator()
                : Container(
            child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(name, style: TextStyle(fontSize: 20.0),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(crime, style: TextStyle(fontSize: 20.0),),
                      )
                    ],
                  )),
        )
      ),
    );
  }
}
