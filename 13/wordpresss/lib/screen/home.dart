import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter_html/flutter_html.dart';
import 'package:wordpresss/screen/news.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String url="https://www.yashbharat.com/wp-json/wp/v2/posts";
  List data;
  bool isloading=true;
  @override
  void initState(){
    super.initState();
    this.getjsondata();
  }
  Future getjsondata() async
  {
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
      title: Text("Top News"),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: (){},
        ),

      ],
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
                       Image.network( data[index]["pwapp_post_image"]),
                    // Image.network(data[index]["_embedded"]['wp:featuredmedia'][index]['media_details']['sizes']['medium']['source_url']),
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
        time:time
      )
    ));
  }
}