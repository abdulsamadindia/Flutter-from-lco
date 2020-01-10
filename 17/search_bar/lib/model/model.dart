import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class DataSearch extends SearchDelegate<String> {
  final String url = "http://userapi.tk/youtube/";
  List data;
  bool isloading = true;
 
  

  Future getjsondata() async {
    var response = await http.get(Uri.encodeFull(url));
    var converdatatojason = json.decode(response.body);
      data = converdatatojason;
      print(data);
    
  }
  final cities = [
    "Sameer",
    "Abdul Samad",
    "Foz",
    "Raushan",
    "Shivam",
    "Selven",
    "Jay",
    "Shobit",
    "Dharmendre",
    "Alan krit",
    'Shaksham'
  ];
  final recentcities = ["Sameer", "Abdul Samad", "Foz", "Raushan", "Shivam"];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        child: Card(
          color: Colors.grey,
          shape: StadiumBorder(),
          child: Center(
              child: Text(
            query,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          )),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionlist = query.isEmpty
        ? recentcities
        : cities.where((p) => p.startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.person),
        title: RichText(
          text: TextSpan(
              text: suggestionlist[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggestionlist[index].substring(query.length),
                    style: TextStyle(color: Colors.blue))
              ]),
        ),
      ),
      itemCount: suggestionlist.length,
    );
  }
}
