import 'package:contact_firebase/model/myData.dart';
import 'package:contact_firebase/screen/editpage.dart';
import 'package:flutter/material.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:url_launcher/url_launcher.dart';


class ViewContact extends StatefulWidget {
  final String appbarTitle;
  final myData mydata;

  ViewContact (this.appbarTitle, this.mydata);
  @override
 State<StatefulWidget> createState()
 {
   return _ViewContactState(this.appbarTitle, this.mydata, );
 }
}
class _ViewContactState extends State<ViewContact> {

  String appBarTitle;
  myData mydata;
  _ViewContactState(this.appBarTitle, this.mydata);

  _textMe (String phone) async {
    var uri = 'sms:+91 $phone.';
    if (await canLaunch(uri)){
      await launch(uri);

    }
    else {
      throw 'Could not lauch $uri';
    }
  }
  void deletedata (String title)
  {
    FirebaseDatabase.instance.reference().child('message').child(title).remove();
    moveToLastScreen();
    _showAlertDialog('Status', 'Contact Deleted');

  }
  void _showAlertDialog (String title, String message){
    AlertDialog alertDialog = AlertDialog(
      title: Text(title),
      content: Text(message),
    );
    showDialog(
      context: context,
      builder: (_)=> alertDialog
    ); 
  }
  void moveToLastScreen(){
    Navigator.pop(context, true);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(title: Text(mydata.name),),

      body: Form(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(mydata.imageurl))
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(mydata.name),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text(mydata.mobile),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text(mydata.email),
              ),
              ListTile(
                leading: Icon(Icons.location_city),
                title: Text(mydata.address),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){
                      launch("tel:+91${mydata.mobile}");
                    },
                    child: Container(
                      padding: EdgeInsets.all(12.0),
                      color: Colors.white,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.call,
                          color: Colors.white,
                          size: 32.0,),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      _textMe(mydata.mobile);
                    },
                    child: Container(
                      padding: EdgeInsets.all(12.0),
                      color: Colors.white,
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.message,
                        color:Colors.white,
                        size:40.0,
                        ),
                        radius: 32.0,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> EditContactPage(
                        text:mydata.name,email:mydata.email, mobile:mydata.mobile, address:mydata.address, url:mydata.imageurl)));
                    },
                    child: Container(
                      padding: EdgeInsets.all(12.0),
                      color: Colors.white,
                      child: CircleAvatar(
                        backgroundColor: Colors.purple,
                        child: Icon(Icons.edit,
                        color: Colors.white,
                        size: 40.0,
                        ),
                        radius: 32.0,
                        
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){deletedata(mydata.name);},
                    child: Container(
                      padding: EdgeInsets.all(12.0),
                      color: Colors.white,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Icon(Icons.delete,
                        color: Colors.white,
                        size: 40.0,
                        ),
                        radius: 32.0,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}