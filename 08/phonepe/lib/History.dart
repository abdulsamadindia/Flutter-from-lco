import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {

    var money= [
      "32","82","7300","89"
    ];
    var place= [
      "Ravi Pg", "Shop", "Lco", "Shivam"
    ];
    var time= [
      "1 second Ago", "4 hours ago", "7 days ago", "1 month ago"
    ];
    var bank=[
      AssetImage("image/sbi.jpg"),
      AssetImage("image/ubi.png"),
      AssetImage("image/indbank.jpg"),
      AssetImage("image/boi.png"),
    ];
    // var images=[
    //   AssetImage("image/man1.jpg"),
    //   AssetImage("image/man2.jpg"),
    //   AssetImage("image/man3.jpg"),
    //   AssetImage("image/man4.jpg"),
    //   AssetImage("image/man5.jpg"),
    //   AssetImage("image/man6.jpg"),
    //   AssetImage("image/man1.jpg"),
    //   AssetImage("image/man8.jpg"),
    // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext ctx, index)=>
          Card(         
          child: Container(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Paid To", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                  subtitle: Text(place[index]),
                  leading: Image.asset("image/request.png"),
                  trailing: Text("₹"+ money[index], style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0)),
                ),

                
                // Row(
                // children: <Widget>[
                //   Padding(
                //     padding: EdgeInsets.only(top: 10.0,left: 10.0),
                //     child: Container(
                      
                //       child: CircleAvatar(
                //         radius: 30.0,
                //       backgroundColor: Colors.blue,
                //         ),
                //         ),
                //   ),
                //   // Column(
                  //   children: <Widget>[
                  //     Row(
                  //       children: <Widget>[
                  //         Padding(
                  //           padding: const EdgeInsets.only(left: 18.0),
                  //           child: Text("Paid To", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                  //         ),
                  //         Padding(
                  //         padding: EdgeInsets.only(left: 130.0),
                  //         child: Text("₹"+ money[index], style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                  //        ),
                  //       ],
                  //     ),
                  //     //  Column(
                      //    children: <Widget>[
                      //      Row(
                      //        mainAxisAlignment: MainAxisAlignment.start,
                      //        children: <Widget>[
                      //          Text(place[index]),
                      //        ],
                      //      )
                      //    ],
                      //  )
              //       ],
              //     ),
                  
                 
              //   ],
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Text(time[index]),
                            ),
                            Padding(
                            padding: EdgeInsets.only(left: 140.0),
                            child: Text("Debited From"),
                            
                           ),
                           Padding(
                             padding: EdgeInsets.only(left: 5.0),
                             child: CircleAvatar(
                              radius: 8.0,
                            backgroundImage: bank[index],
                             )
                           )
                          ],
                        ),
              ),
              Container(
                height: 10.0,
              )
              
              ],
            ),
          ),
        ),
        
      ),
      ),
    );

  }
}