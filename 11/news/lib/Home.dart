import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news/fullnews.dart';
import 'dart:convert';
import 'dart:async';
import 'fullnews.dart';
import 'package:flutter_swiper/flutter_swiper.dart';



// import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 // GlobalKey<FormState> _key = new GlobalKey();
  // bool _autovalidate = false;
  String index;

  final String url= "https://newsapi.org/v2/everything?domains=wsj.com,nytimes.com&apiKey=7596e46e92dc4765a0c9d3ce0ec3455e";
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
        title: Text("Top News"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: this.getjsondata,
          )
        ],
      ),
      body: Container(
        
              child: Center(
        //  key: _key,
          
            child: isLoading? CircularProgressIndicator():  Swiper(
              itemCount: 20,
              itemWidth: 350.0,
              itemHeight: 600.0,
              
              // layout: SwiperLayout.TINDER,
              itemBuilder: (BuildContext context, int index){
                return Card(
                  child: Column(
                    
                    children: <Widget>[

                      Container(
                        child: Image.network(datasam1["articles"][index]["urlToImage"]),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(top: 10.0, left: 10.0),
                      //   child: Text(datasam1["articles"][index]["source"]["name"]),
                      // ),
                      // Padding(
                      //   padding: EdgeInsets.only(top: 30.0, left: 10.0),
                      //   child: Text(datasam1["articles"][index]["title"]),
                      // )

                        ListTile(
                          
                          
                          title: Text(datasam1["articles"][index]["title"],style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),),
                          
                          subtitle: Text(datasam1["articles"][index]["description"] ,style: TextStyle(fontSize: 16.0) ),
                           
                          onTap:()=> _sendtonextScreen(index)
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
  // Future<void> ShowDialog(int index) async {
  //   return showDialog<void>(
  //       context: context,
  //       barrierDismissible: true,
  //       builder: (BuildContext context) {
  //         return SimpleDialog(
  //           shape:
  //               RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  //           children: <Widget>[
  //             Container(
  //                 height: 2000,
  //                 width: 500,
  //                 decoration: BoxDecoration(
  //                   borderRadius: BorderRadius.all(Radius.circular(20)),
  //                 ),
  //                 child: WebView(
  //                   initialUrl: datasam1["articles"][index]["url"],
  //                     javascriptMode: JavascriptMode.unrestricted,
                    
  //                 )
  //                 ),
  //           ],
  //         );
  //       });
  // }

  _sendtonextScreen(int index){
     
       Navigator.push(
         context, MaterialPageRoute(
           builder: (context) => full(
             datasam1: datasam1,
             index : index,
           )
         )
         );
     }
   }




