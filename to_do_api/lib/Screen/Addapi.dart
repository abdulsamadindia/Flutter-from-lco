import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Addapi extends StatefulWidget {
  @override
  _AddapiState createState() => _AddapiState();
}

class _AddapiState extends State<Addapi> {

  TextEditingController location = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController crime = TextEditingController();
  TextEditingController evidence = TextEditingController();
  TextEditingController suspect = TextEditingController();
  TextEditingController suggestion = TextEditingController();
  TextEditingController help = TextEditingController();
  TextEditingController date = TextEditingController();


  

  // String  , , , , , , ;

  void post() async {
    var result = await http.post("http://userapi.tk/shobhit/insertdata", body: {
      "location": location.text,
      "name": name.text,
      "crime": crime.text,
      "evidence": evidence.text,
      "suspect": suspect.text,
      "suggestion": suggestion.text,
      "help": help.text,
      "date": date.text,
    });
    print(result.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            
        
              
               Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                    ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: TextField(
                      decoration: InputDecoration(hintText: "Location",border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                      controller: location,
                     ),
                   ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                      decoration: InputDecoration(hintText: "Name",border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                      controller: name,
                   ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                      decoration: InputDecoration(hintText: "Crime",border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                      controller: crime,
                   ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                      decoration: InputDecoration(hintText: "Evidence",border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                      controller: evidence,
                   ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                      decoration: InputDecoration(hintText: "Suspect",border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                      controller: suspect,
                   ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                      decoration: InputDecoration(hintText: "Suggestion",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                      controller: suggestion,
                   ),
                    ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: TextField(
                    decoration: InputDecoration(hintText: "Help",
                    labelText: "Help",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                    controller: help,
                   ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: TextField(
                        
                    decoration: InputDecoration(hintText: "Date",
                    labelText: "Date",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))
                    ),
                    controller: date,
                   ),
                     ),
                    
                    MaterialButton(
                      color: Colors.green,
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed:(){post();
                      setState(() {
                        location.text = "";
                       name.text = "";  
                       crime.text = ""; 
                        evidence.text = ""; 
                        suspect.text = ""; 
                        suggestion.text = "";
                        help.text = "";  
                        date.text = ""; 
                      });
                      },
                    )
                  ],
                ),
              ),
            
          ],
        ),
      ),
    );
  }

  
}






// ListTile(
//                       title: TextFormField(
//                         validator: (input) {
//                           if (input.isEmpty) {
//                             return 'Please Enter crime';
//                           }
//                           return null;
//                         },
//                         decoration: InputDecoration(labelText: 'Location'),
//                         onSaved: (input) => location = input,
//                       ),
//                     ),
//                     ListTile(
                      
//                       title: TextFormField(
//                         validator: (b) {
//                           if (b.isEmpty) {
//                             return 'Please Enter Nmae';
//                           }
//                           return null;
//                         },
//                         decoration: InputDecoration(labelText: 'Name'),
//                         onSaved: (b) => name = b,
//                       ),
//                     ),
//                     ListTile(
//                       title: TextFormField(
//                         validator: (c) {
//                           if (c.isEmpty) {
//                             return 'Please Enter Crime';
//                           }
//                           return null;
//                         },
//                         decoration: InputDecoration(labelText: 'Crime'),
//                         onSaved: (c) => crime = c,
//                       ),
//                     ),
//                     ListTile(
//                       title: TextFormField(
//                         validator: (d) {
//                           if (d.isEmpty) {
//                             return 'Please Enter evidence';
//                           }
//                           return null;
//                         },
//                         decoration: InputDecoration(labelText: 'evidence'),
//                         onSaved: (d) => evidence = d,
//                       ),
//                     ),
//                     ListTile(
//                       title: TextFormField(
//                         validator: (e) {
//                           if (e.isEmpty) {
//                             return 'Please Enter suspect';
//                           }
//                           return null;
//                         },
//                         decoration: InputDecoration(labelText: 'suspect'),
//                         onSaved: (e) => suspect = e,
//                       ),
//                     ),
//                     ListTile(
//                       title: TextFormField(
//                         validator: (f) {
//                           if (f.isEmpty) {
//                             return 'Please Enter suggestion';
//                           }
//                           return null;
//                         },
//                         decoration: InputDecoration(labelText: 'suggestion'),
//                         onSaved: (f) => suggestion = f,
//                       ),
//                     ),
//                     ListTile(
//                       title: TextFormField(
//                         validator: (g) {
//                           if (g.isEmpty) {
//                             return 'Please Enter help';
//                           }
//                           return null;
//                         },
//                         decoration: InputDecoration(labelText: 'help'),
//                         onSaved: (g) => help = g,
//                       ),
//                     ),
//                     ListTile(
//                       title: TextFormField(
//                         validator: (h) {
//                           if (h.isEmpty) {
//                             return 'Please Enter date';
//                           }
//                           return null;
//                         },
//                         decoration: InputDecoration(labelText: 'date'),
//                         onSaved: (h) => date = h,
//                       ),
//                     ),