import 'package:contact_firebase/model/myData.dart';
import 'package:contact_firebase/screen/AddContact.dart';
import 'package:contact_firebase/screen/viewContact.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<myData> allData = [];

  void initState() {
    super.initState();
    _loadContacts();
  }

  void _loadContacts() {
    DatabaseReference ref = FirebaseDatabase.instance.reference();
    ref.child("message").once().then((DataSnapshot snap) {
      var keys = snap.value.keys;
      var data = snap.value;
      allData.clear();
      for (var key in keys) {
        myData d = myData(data[key]['name'], data[key]['mobile'],
            data[key]['email'], data[key]['address'], data[key]['imageurl']);
        allData.add(d);
      }
    });
    FirebaseDatabase.instance.setPersistenceEnabled(true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact App"),
      ),
      body: listview(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          gotocreatepage();
        },
      ),
    );
  }

  Widget listview() => Center(
      child: allData.length == 0
          ? CircularProgressIndicator()
          : ListView.builder(
              itemCount: allData.length,
              itemBuilder: (_, index) {
                return GestureDetector(
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    elevation: 5.0,
                    color: Colors.red,
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                            ListTile.divideTiles(context: context, tiles: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(allData[index].imageurl),
                            ),
                            title: Text(allData[index].name,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0)),
                            subtitle: Text(allData[index].mobile,
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 0.0),
                            onTap: () {
                              navigateTodetails(
                                  this.allData[index], 'View Contact');
                            },
                          ),
                        ]).toList(),
                      ),
                    ),
                  ),
                );
              }));
  gotocreatepage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return MyContact();
    }));
  }

//   void addmessagepage() async
// {
//   Navigator.push(context,
//   MaterialPageRoute(builder: (context)=> Addmessagepage()));
// }
  void navigateTodetails(myData mydata, String title) async {
    bool result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ViewContact(title, mydata);
    }));
    if (result == true) {
      _loadContacts();
    }
  }
}
