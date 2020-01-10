import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  

  

 var icon = [

      Icon(Icons.trending_up),
      Icon(Icons.home),
      Icon(Icons.perm_identity),
      Icon(Icons.account_balance),
      Icon(Icons.airline_seat_legroom_normal),
      Icon(Icons.arrow_upward),
      Icon(Icons.add_circle),
      Icon(Icons.add_to_photos),
    ];
    var images=[
      AssetImage("image/man1.jpg"),
      AssetImage("image/man2.jpg"),
      AssetImage("image/man3.jpg"),
      AssetImage("image/man4.jpg"),
      AssetImage("image/man5.jpg"),
      AssetImage("image/man6.jpg"),
      AssetImage("image/man1.jpg"),
      AssetImage("image/man3.jpg"),
    ];
      var textlist = [
            
            "To Contact","Tp Account","To Self","Bank Balance","Split Bill","Request",
      ];
      var name = [
            
            "Sameer","Sam","Shivam","Abhinav","Selvan","Alankrit","Foz","jay"
      ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      body: SingleChildScrollView(

          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
              padding: EdgeInsets.all(10),
              child: Text("MONEY TRANSFER", 
              style:TextStyle(fontSize:15 , fontWeight: FontWeight.bold)),
                ) ,
                ],
              ),
              SizedBox(
              height: 100,
              child:  ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder:(BuildContext ctx, index) => 
              Column(
              children: <Widget>[
              IconButton(
              color: Colors.blue,
              onPressed: (){},
              icon: icon[index],
              
              iconSize: 35,
              padding: EdgeInsets.fromLTRB(35, 20, 30, 10),
              ),
              Text(textlist[index]
              ),
              ],
              ),
              ),
              ),
              Container(
                height: 10.0,
              ),
              Container(
                height: 1.0,
                color: Colors.grey,
              ),
              
              SizedBox(
              height: 110,
              child:  ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder:(BuildContext ctx, index) => 
              Column(
                
              children: <Widget>[
              Padding(
                    padding: const EdgeInsets.fromLTRB(20,26,10,8),
                        child: CircleAvatar(radius: 30.0,
                        backgroundImage: images[index],
                            ),
                            ) ,
              Text(name[index]
              ),
              ],
              ),
              ),
              ),
              Container(
                height: 10.0,
              ),
              Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Container(
            color: Color(0xfff6f3fa),
            height: 150.0,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        
                        children: <Widget>[
                          Image.asset("image/per.png", height: 50.0,width: 50.0,),
                          Container(
                            height: 10.0,
                          ),
                          Text("View All\n Offers", style: TextStyle(fontSize: 16),)
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Container(
                          height: 100.0,
                          width: 1.0,
                          color: Colors.grey,
                        ),
                      ),
                      Column(
                        
                        children: <Widget>[
                          Image.asset("image/gift.png", height: 50.0,width: 50.0,),
                          Container(
                            height: 10.0,
                          ),
                          Text("View My\n Rewards", style: TextStyle(fontSize: 16),)
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 20.0),
                        child: Container(
                          height: 100.0,
                          width: 1.0,
                          color: Colors.grey,
                        ),
                      ),
                          Column(
                        
                        children: <Widget>[
                          Image.asset("image/card.png", height: 50.0,width: 50.0,),
                          Container(
                            height: 10.0,
                          ),
                          Text("Refer & Earn\n Min Rs. 100", style: TextStyle(fontSize: 16),)
                        ],
                      )
                    ],

                ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(top: 20.0),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                // children: <Widget>[
                //   Text("View All\n Offers", style: TextStyle(fontSize: 16),),
                //   Text("View My\n Rewards",  style: TextStyle(fontSize: 16),),
                //   Text("Refer & Earn\n Min Rs. 100", style: TextStyle(fontSize: 16)),
                  
                //   ],

                // ),
                // )
              ],
            ),
          ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Row(
                    
                    children: <Widget>[
                    Text("Recharge & Pay Bills" , style: TextStyle(fontWeight: FontWeight.bold),)
                    ],

                  ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                              Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        
                        children: <Widget>[
                          Image.asset("image/recharge.png", height: 40.0,width: 40.0,),
                          Container(
                            height: 10.0,
                          ),
                          Text("Recharge", style: TextStyle(fontSize: 14),)
                        ],
                      ),
                      
                      Column(
                        
                        children: <Widget>[
                          Image.asset("image/dth.png", height: 40.0,width: 40.0,),
                          Container(
                            height: 10.0,
                          ),
                          Text("DTH", style: TextStyle(fontSize: 14),)
                        ],
                      ),
                      
                          Column(
                        
                        children: <Widget>[
                          Image.asset("image/bulb.png", height: 40.0,width: 40.0,),
                          Container(
                            height: 10.0,
                          ),
                          Text("Electriciy", style: TextStyle(fontSize: 14),)
                        ],
                      ),
                      
                          Column(
                        
                        children: <Widget>[
                          Image.asset("image/credit.png", height: 40.0,width: 40.0,),
                          Container(
                            height: 10.0,
                          ),
                          Text("Credit Card", style: TextStyle(fontSize: 14),)
                        ],
                      )
                    ],

                ),
                ),
                // Container(
                //   height: 10.0,
                //   child: Text("1"),
                // ),
                            Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        
                        children: <Widget>[
                          Image.asset("image/postpaid.png", height: 40.0,width: 40.0,),
                          Container(
                            height: 10.0,
                          ),
                          Text("PostPaid", style: TextStyle(fontSize: 14),)
                        ],
                      ),
                      
                      Column(
                        
                        children: <Widget>[
                          Image.asset("image/landline.png", height: 40.0,width: 40.0,),
                          Container(
                            height: 10.0,
                          ),
                          Text("Landline", style: TextStyle(fontSize: 14),)
                        ],
                      ),
                      
                          Column(
                        
                        children: <Widget>[
                          Image.asset("image/router.png", height: 40.0,width: 40.0,),
                          Container(
                            height: 10.0,
                          ),
                          Text("Broadband", style: TextStyle(fontSize: 14),)
                        ],
                      ),
                      
                          Column(
                        
                        children: <Widget>[
                          Image.asset("image/gas.png", height: 40.0,width: 40.0,),
                          Container(
                            height: 10.0,
                          ),
                          Text("Gas", style: TextStyle(fontSize: 14),)
                        ],
                      )
                    ],

                ),
                ),
                // Container(
                //   height: 10.0,
                //   child: Text("2"),
                // ),
                            Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        
                        children: <Widget>[
                          Image.asset("image/water.png", height: 40.0,width: 40.0,),
                          Container(
                            height: 10.0,
                          ),
                          Text("Water", style: TextStyle(fontSize: 14),)
                        ],
                      ),
                      
                      Column(
                        
                        children: <Widget>[
                          Image.asset("image/datacard.png", height: 40.0,width: 40.0,),
                          Container(
                            height: 10.0,
                          ),
                          Text("Datacard", style: TextStyle(fontSize: 14),)
                        ],
                      ),
                      
                          Column(
                        
                        children: <Widget>[
                          Image.asset("image/insurance.png", height: 40.0,width: 40.0,),
                          Container(
                            height: 10.0,
                          ),
                          Text("Insurance", style: TextStyle(fontSize: 14),)
                        ],
                      ),
                      
                          Column(
                        
                        children: <Widget>[
                          Image.asset("image/muncipaltax.png", height: 40.0,width: 40.0,),
                          Container(
                            height: 10.0,
                          ),
                          Text("Muncipal Tax", style: TextStyle(fontSize: 14),)
                        ],
                      )
                    ],

                ),
                ),
                // Container(
                //   height: 10.0,
                //   child: Text("3"),
                // ),
                            Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        
                        children: <Widget>[
                          Image.asset("image/googleplay.png", height: 40.0,width: 40.0,),
                          Container(
                            height: 10.0,
                          ),
                          Text("Google Play", style: TextStyle(fontSize: 14),)
                        ],
                      ),
                      

                      
                          Column(
                        
                        children: <Widget>[
                          Image.asset("image/giftcardd.png", height: 40.0,width: 40.0,),
                          Container(
                            height: 10.0,
                          ),
                          Text("Electriciy", style: TextStyle(fontSize: 14),)
                        ],
                      ),
                      
                         
                    ],

                ),
                ),
                Container(
                  height: 20.0,
                  // child: Text("4"),
                ),
                  

                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
      
    );
  }
}