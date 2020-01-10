import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:flutter_html/flutter_html.dart';
import 'package:wordpresss/screen/news.dart';




class Categorydetail extends StatefulWidget {
final int id;
final String name;
Categorydetail({
  Key key,@required this.id, this.name
}): super (key:key);

  @override
  _CategorydetailState createState() => _CategorydetailState(id:id,name:name);
}

class _CategorydetailState extends State<Categorydetail> {
 int id;
 String name;

  _CategorydetailState({Key key, @required this.id,this.name});
   
  List data;
  bool isloading=true;
  @override
  void initState(){
    super.initState();
    this.getjsondata();
  }
  Future getjsondata() async
  {
    String url="https://www.yashbharat.com/wp-json/wp/v2/posts?categories=$id";
    var response=await http.get(Uri.encodeFull(url));
    setState(() {
     var converdatatojason = json.decode(response.body);
     data=converdatatojason;
     isloading=false; 
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(name),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(10.0),
        
        child: Center(
          child: isloading? CircularProgressIndicator(): ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index){
                return GestureDetector(
                  onTap: ()=>_viewnews(
                    data[index]["title"]['rendered'],
                    data[index]["content"]['rendered'],
                    data[index]["pwapp_post_image"],
                    data[index]["modified_gmt"],),
                  child: Card(
                    color: Colors.white70,
                  // shape: RoundedRectangleBorder(
                  // borderRadius: BorderRadius.circular(10.0)
                  //  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                     children: <Widget>[
                     Image.network(data[index]["pwapp_post_image"],),
                    Text(data[index]["title"]['rendered'], style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                    Html(data: data[index]["excerpt"]['rendered']),
                    // Text(data[index]["excerpt"]['rendered']),
              ],
            ),
                  ),
          ),
                );
            }
          ),
              
        ),
      ),
      
    );
  }
  _viewnews(String title, String desc, String imgurl,String time){
    Navigator.push(context, 
    MaterialPageRoute(
      builder: (context)=>News(
        title:title,
        desc:desc,
        imgurl:imgurl,
        time: time,
      )
    ));
  }
}