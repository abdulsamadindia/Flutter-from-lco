import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final String url= "http://userapi.tk/";
  List datasam1;
  var isLoading = true;

  @override
  void initState(){
    super.initState();
    this.getjsondata();
  }

  Future<String> getjsondata()async
  {
    var response=await http.get(
      Uri.encodeFull(url)
    );
    print(response.body);
    setState(() {
     var sam=json.decode(response.body);
     datasam1= sam;
     isLoading=false;

    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sameer"),
      ),
      body: Container(
        child: Center(
          child: isLoading? CircularProgressIndicator(): ListView.builder(
            itemCount: datasam1.length,
            itemBuilder: (BuildContext context, int index){
              return Card(
                child: Column(
                  children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(datasam1[index]["ImageURL"]),
                        ),
                        title: Text(datasam1[index]["Name"]+datasam1[index]["ID"] ),
                        subtitle: Text(datasam1[index]["EmailID"]),
                      )
                  ],
                ),
              );
            }
          )
        ),
      ),
      
    );
  }
}