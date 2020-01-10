import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:wordpresss/screen/categorydetails.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final String url= "https://www.yashbharat.com/wp-json/wp/v2/categories";
  List data;
  bool isloading=true;
  @override
  void initState(){
    super.initState();
    this.getjsondata();
  }
  Future getjsondata()async
  {
    var response=await http.get(
      Uri.encodeFull(url)
    );
    setState(() {
     var converdatajson=json.decode(response.body);
     data=converdatajson;
     
     isloading=false;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      title: Text("Category"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){},
        ),

      ],
    ), 
      body: Center(
              child: Container(
          child: isloading?CircularProgressIndicator():ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index){
              return Card(
                color: Colors.white38,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(.0),
                  
                // ),
                child: ListTile(
                  onTap: (){_categorydetails(data[index]['id'],data[index]['name']);},
                  trailing: Text(data[index]['count'].toString()),
                  title: Text(data[index]['name']),
                  leading: Icon(Icons.arrow_forward),
                  // subtitle: Visibility(
                  //   visible: false,
                  //   child: Text(data[index]['id'].toString())),
                                  
                ),
              );
            },
          ),
        ),
      ),
    );
  }
  _categorydetails(int id, String name){
    Navigator.push(context, MaterialPageRoute(
      builder: (context)=> Categorydetail(
        id:id,
        name:name,
      )
    ));
  }
}