import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';


class Report extends StatefulWidget {
  final currentValue;
  Report({Key key, @required this.currentValue}): super (key:key);
  @override
  _ReportState createState() => _ReportState(currentValue: currentValue);
  
}

class _ReportState extends State<Report> {
  String currentValue;

  _ReportState({Key key, @required this.currentValue,});

    
// final _currentValue;
//     Report({Key key, @required this._currentValue,}): super (key: key);

  
  var datasam1;
  var isLoading = true;

  @override
  void initState(){
    super.initState();
    this.getjsondata();

  }

  Future<String> getjsondata()async
  {
    final String url= "http://openweathermap.org/data/2.5/weather?q=$currentValue&appid=b6907d289e10d714a6e88b30761fae22";
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
        title: Text("Weather App"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: this.getjsondata,
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        color: Colors.amber,
        height: double.infinity,
        width: 500.0,
        
        child: Center(
          child: isLoading? CircularProgressIndicator(): 
          Card(
            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)
            ),
                    child: Column(
              children: <Widget>[
                  Image.asset("image/1.png"),
                  // Image.network("http://www.transparentpng.com/thumb/weather-report/weather-clip-art-at-pictures-1.png"),
                  Text("Temp : ${datasam1['main']['temp']}", style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic,color: Colors.red),),
                  Text("Pressure : ${datasam1['main']['pressure']}", style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic, color: Colors.red),),
                  Text("Humidity : ${datasam1['main']['humidity']}", style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic,color: Colors.red),),
                  Text("Temp_min : ${datasam1['main']['temp_min']}", style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic,color: Colors.red),),
                  Text("Temp max : ${datasam1['main']['temp_max']}", style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic,color: Colors.red),),
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}

