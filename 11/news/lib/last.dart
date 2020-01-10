import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Last extends StatefulWidget {
  @override
  _LastState createState() => _LastState();
}

class _LastState extends State<Last> {
  final String url= "https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=7596e46e92dc4765a0c9d3ce0ec3455e";
  var datasam1;
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



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("About us"),
        
      ),
      body: Container(
        child: Center(
          child: isLoading? CircularProgressIndicator(): ListView.builder(
            itemCount:datasam1.toString().length,
            itemBuilder: (BuildContext context, int index){
              return Card(
                child: Column(
                  children: <Widget>[ 
                      Text("This is good app for news")
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