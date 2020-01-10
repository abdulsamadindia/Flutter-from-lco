import 'package:flutter/material.dart';

class MyMoney extends StatefulWidget {
  @override
  _MyMoneyState createState() => _MyMoneyState();
}

class _MyMoneyState extends State<MyMoney> {

  var walletsname=[
    "PhonePe","PhonePe\nGift Card","Jio Money","FreeCharge","Airtel Money"

  ];
  var image=[
    AssetImage("image/phonepe.png"),
    AssetImage("image/phonegold.jpg"),
    AssetImage("image/jiomoney.jpg"),
    AssetImage("image/freecharge.jpg"),
    AssetImage("image/airtel.jpg"),
  ];
  var pm=[
    "Auto PAy","Reminders"

  ];
  var image2=[
    
    AssetImage("image/AutoPay.jpg"),
    AssetImage("image/reminders.jpg"),
    
  ];
  var wm=[
    "Gold","Tax Savings\n\tFunds"

  ];
  var image3=[
    
    AssetImage("image/gold.jpg"),
    AssetImage("image/Tax.jpg"),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              
              height: 150.0,

              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                    padding: EdgeInsets.only(top: 20.0,left: 20.0),
                    child: Text("Payment methods", 
                    style: TextStyle(fontSize: 16.0, 
                    fontWeight: FontWeight.bold)),
                  ),
                    ],
                  ),
                  Container(
                    height: 5.0,
                  ),
                  Row(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(left: 10.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset("image/upi.png", height: 40.0,width: 60.0,),
                          Container(
                            height: 10.0,
                          ),
                          Text("Bank Accounts", style: TextStyle(fontSize: 14),)
                      
                      
                        ],
                      ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset("image/credit.png", height: 40.0,width: 40.0,),
                          Container(
                            height: 10.0,
                          ),
                          Text("Debit Card", style: TextStyle(fontSize: 14),)
                      
                      
                        ],
                      ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset("image/credit.png", height: 40.0,width: 40.0,),
                          Container(
                            height: 10.0,
                          ),
                          Text("Credit Card", style: TextStyle(fontSize: 14),)
                      
                      
                        ],
                      ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            
            Container(
              height: 1.0,

              color: Colors.grey,
            ),
            Container(
              height: 5,
            ),
            Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                    padding: EdgeInsets.only(top: 20.0,left: 20.0),
                    child: Text("Wallets / Gift Vouchars", 
                    style: TextStyle(fontSize: 16.0, 
                    fontWeight: FontWeight.bold)),
                  ),
                    ],
                  ),
                  Container(
                    height: 140.0,
                      child: SizedBox(
              height: 130,
              child:  ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder:(BuildContext ctx, index) => 
              Column(
                
              children: <Widget>[
              Padding(
                    padding: const EdgeInsets.fromLTRB(20,26,10,8),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: image[index],
                            ),
                            ) ,
              Text(walletsname[index]
              ),
              ],
              ),
              ),
              ),
                  ),
              Container(
              height: 5,
            ),
            Container(
              height: 1.0,

              color: Colors.grey,
            ),
            Container(
              height: 5,
            ),
            Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                    padding: EdgeInsets.only(top: 20.0,left: 20.0),
                    child: Text("Payment managment", 
                    style: TextStyle(fontSize: 16.0, 
                    fontWeight: FontWeight.bold)),
                  ),
                    ],
                  ),
                  Container(
                    height: 140.0,
                      child: SizedBox(
              height: 130,
              child:  ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder:(BuildContext ctx, index) => 
              Column(
                
              children: <Widget>[
              Padding(
                    padding: const EdgeInsets.fromLTRB(20,26,10,8),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: image2[index],
                            ),
                            ) ,
              Text(pm[index]
              ),
              ],
              ),
              ),
              ),
                  ),
                  Container(
              height: 5,
            ),
            Container(
              height: 1.0,

              color: Colors.grey,
            ),
            Container(
              height: 5,
            ),
            Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                    padding: EdgeInsets.only(top: 20.0,left: 20.0),
                    child: Text("Wealth management", 
                    style: TextStyle(fontSize: 16.0, 
                    fontWeight: FontWeight.bold)),
                  ),
                    ],
                  ),
                  Container(
                    height: 140.0,
                      child: SizedBox(
              height: 130,
              child:  ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder:(BuildContext ctx, index) => 
              Column(
                
              children: <Widget>[
              Padding(
                    padding: const EdgeInsets.fromLTRB(20,26,10,8),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: image3[index],
                            ),
                            ) ,
              Text(wm[index]
              ),
              ],
              ),
              ),
              ),
                  ),
          ],
        ),
      )
      
    );
  }
}