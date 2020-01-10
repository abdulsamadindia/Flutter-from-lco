import 'package:flutter/material.dart';
import 'package:twitter_clone/modal/modal.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Home", style: TextStyle(color: Colors.black),),
        leading: Icon(Icons.format_list_bulleted,color: Colors.black),
      ),
      body: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext contex, index) {
                    return  Container(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 25,

                backgroundImage: NetworkImage("http://userapi.tk/youtube/images/profile2.jpg")
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("Abdul Samad",style: TextStyle( fontSize: 16.0)),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text("@abdul_samad", style: TextStyle(color: Colors.grey, fontSize: 16.0),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        "1day",style: TextStyle( fontSize: 16.0)
                      ),
                    ),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                Container(
                  width: 280,
                  child: Text("I am study in Learn Code Online",style: TextStyle( fontSize: 16.0))),
                Container(
                  height: 150,
                  child: Image.network("http://userapi.tk/youtube/images/2.jpg")),
                Text("43,286 views"),
                Container(
                  height: 15.0,
                ),
                Row(
                  
                  children: <Widget>[
                    Icon(Icons.comment),
                    Text("4,213"),
                    Padding(
                     padding: EdgeInsets.only(left: 20.0),
                      child: Icon(Icons.repeat),
                    ),
                    Text("764"),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Icon(Icons.favorite_border),
                    ),
                    Text("9,012"),
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: Icon(Icons.share),
                    ),
                  ],
                )
              ],
            )
          ],
        ));
        }
      ),
                  
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        //  Image(image: AssetImage("Image/1.jpg"),),
        onPressed: () {},
      ),
    );
  }
}
