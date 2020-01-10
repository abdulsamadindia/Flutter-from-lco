import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:share/share.dart';
// import 'package:flutter_html/flutter_html.dart';

class News extends StatefulWidget {
  
final String title;
final String desc;
final String imgurl;
final String time;
    News({Key key,@required this.title, this.desc, this.imgurl, this.time
}): super (key:key);

  @override
  _NewsState createState() => _NewsState(title:title, desc:desc, imgurl:imgurl, time:time);
}


class _NewsState extends State<News> {
  String title;
  String desc;
  String imgurl;
  String time;
  _NewsState ({Key key, @required this.desc, this.imgurl, this.title, this.time});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(title),
      ),
      body: SingleChildScrollView(
              child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(title, style: TextStyle(fontSize: 26.0,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding:EdgeInsets.only(left: 200.0),
                child: Html(data: time,),
              ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
              //   child: Image.network(imgurl)
              child: Image.network(imgurl),
               ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Html(data: desc,),
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
               onPressed: ()=>Share.share('check out my news $title'),
              child: Image.asset('image/share.png', height: 40.0,width: 40.0,),
              ),
              Text('Share')
                ],
              )
            ],
          ),
        ),
      ),
      // body: NestedScrollView(
      //   headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
      //     return <Widget>[
      //     SliverOverlapAbsorber(
      //     handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
      //     child: SliverAppBar(
      //     expandedHeight: 180.0,
      //     flexibleSpace:  FlexibleSpaceBar(
      //     background: Image (image:  NetworkImage(imgurl),),
      //     title: Text(title, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 14.0),),
      //       ),
            
      //     )
      //   )
        
      //   ];
        
      //   },
      //   body: Container(
          
      //     child: Center(
            
      //       child: Card(
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(20.0)
      //         ),
      //         child: Column(
      //           children: <Widget>[
      //             Html(data: desc),
      //             MaterialButton(
      //               onPressed: ()=>Share.share('check out my news $title'),
      //               child: Text("Share"),
      //             )
      //           ],

      //         ),
              
      //       ),
            
      //     ),
      //   ),
      // )      
    );
  }
}