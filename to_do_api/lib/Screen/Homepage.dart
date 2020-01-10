import 'package:flutter/material.dart';
import 'package:to_do_api/Screen/Addapi.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:to_do_api/Screen/Fulldetails.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
        title: Text("Home"),
      ),
       body: Center(
          child: Container(
        child: isloading
            ? CircularProgressIndicator()
            : ListView.builder(
                itemCount:data.length,
                itemBuilder: (BuildContext contex, index) {
                   return ListTile(
                   
                      title:Text(data[index]['name']),
                      subtitle:Text(data[index]['crime']),
                        onTap:  ()=>_fullDetails(
                      data[index]['location'],
                      data[index]['name'],
                      data[index]['crime'],
                      data[index]['evidence'],
                      data[index]['suspect'],
                      data[index]['suggestion'],
                      data[index]['help'],
                      data[index]['date'],
                    ),
                   );
                  // GestureDetector(
                  //   onTap: _fullDetails(
                  //     data[index]['location'],
                  //     data[index]['name'],
                  //     data[index]['crime'],
                  //     data[index]['evidence'],
                  //     data[index]['suspect'],
                  //     data[index]['suggestion'],
                  //     data[index]['help'],
                  //     data[index]['date'],
                  //   ),
                  //   child: Card(
                  //     elevation: 5.0,
                  //     child: Column(
                  //       children: <Widget>[
                  //         Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Text(data[index]['name']),
                  //         ),
                  //         Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Text(data[index]['crime']),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // );
               }),
       )
       ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          gotocreatepage();
        },
      ),
    );
  }

  gotocreatepage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Addapi();
    }));
  }

  _fullDetails(String location, String name, String crime, String evidence,
      String suspect, String suggestion, String help, String date) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FullDetails(
                  location: location,
                  name: name,
                  crime: crime,
                  evidence: evidence,
                  suspect: suspect,
                  suggestion: suggestion,
                  help: help,
                  date: date,
                )));
  }
}
