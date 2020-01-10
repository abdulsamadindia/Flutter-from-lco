import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Sport extends StatefulWidget {
  @override
  _SportState createState() => _SportState();
}

class _SportState extends State<Sport> {
 String index;

  final String url= "https://cricapi.com/api/matchCalendar?apikey=Bolkxrqg4LZ1HKpCFuYrZcDhZny1";
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
        title: Text("Cricket"),
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
          
            child: isLoading? CircularProgressIndicator(): ListView.builder(
              itemCount: datasam1.toString().length,
              itemBuilder: (BuildContext context, int index){
                return Card(
                  child: Column(
                    
                    children: <Widget>[
                      

                        ListTile(
                          title: Text(datasam1["articles"][index]["title"],style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold),),
                          
                          subtitle: Text(datasam1["articles"][index]["description"] ,style: TextStyle(fontSize: 16.0) ),
                           
                          // onTap:()=> _sendtonextScreen(index)
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
           builder: (context) => FullNewsb(
             datasam1: datasam1,
             index : index,
           )
         )
         );
     }
   }





class FullNewsb extends StatelessWidget {
  final  datasam1;
  final index;
FullNewsb({Key key, @required this.datasam1, this.index}): super (key: key);

  

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



