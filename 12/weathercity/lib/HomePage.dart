import 'package:flutter/material.dart';
import 'package:weathercity/Weatherreport.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<FormState> _key = new GlobalKey();

  var _city = ['Motihari', 'delhi', 'jaipur','bhopal','mumbai','punjab','haryan'];
  var currentValue = 'Motihari';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDownMenu"),
      ),
      body: Center(
        key: _key,
          child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                DropdownButton<String>(
                  items: _city.map((String dropDownStringItem){
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                    );
                  }).toList(),

                  onChanged: (String newValue){
                    setState(() {
                     this.currentValue = newValue; 
                    });
                  },
                  value: currentValue,
                ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: MaterialButton(
                  color: Colors.red,
                  minWidth: 180.0,
                  height: 50.0,
                  child: Text("Show Weather", ),
                  onPressed: _sendtonextScreen,
                ),
              )
            ],
          ),
        ),
      ),
      
    );
  }
_sendtonextScreen(){
     
       Navigator.push(
         context, MaterialPageRoute(
           builder: (context) => Report(
             currentValue :currentValue,
             
           )
         )
         );
     }

}