import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:flutter_swiper/flutter_swiper.dart';

class Bitcoin extends StatefulWidget {
  @override
  _BitcoinState createState() => _BitcoinState();
}

class _BitcoinState extends State<Bitcoin> {
 String index;

  final String url= "https://newsapi.org/v2/everything?q=bitcoin&apiKey=7596e46e92dc4765a0c9d3ce0ec3455e";
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
        title: Text("Bitcoin"),
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
          
            child: isLoading? CircularProgressIndicator(): Swiper(
              itemCount: 20,
              itemWidth: 350.0,
              itemHeight: 600.0,
              itemBuilder: (BuildContext context, int index){
                return Card(
                  child: Column(
                    
                    children: <Widget>[
                      
                        Container(
                          child: Image.network(datasam1["articles"][index]["urlToImage"]),
                        ),
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

  _sendtonextScreen(int index){
     
       Navigator.push(
         context, MaterialPageRoute(
           builder: (context) => FullNewsbc(
             datasam1: datasam1,
             index : index,
           )
         )
         );
     }
   }





class FullNewsbc extends StatelessWidget {
  final  datasam1;
  final index;
FullNewsbc({Key key, @required this.datasam1, this.index}): super (key: key);

  

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text(datasam1["articles"][index]["source"]["name"] ),
      ),
      url: datasam1["articles"][index]["url"],
      
    );
  }
}



