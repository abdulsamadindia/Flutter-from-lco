import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
class MyContact extends StatefulWidget {
  @override
  _MyContactState createState() => _MyContactState();
}

class _MyContactState extends State<MyContact> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _autovalidate = false;
  String name, email, mobile, address;
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
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
              height: 30.0,
            ),
            GestureDetector(
              onTap: getImage,
              child: SizedBox(
                height: 100,
                width: 100,
                child: ClipOval(
                  child: _image == null
                      ? Container(
                          color: Colors.black,
                        )
                      : Image.file(_image, fit: BoxFit.cover,),
                      
                ),
              ),
            ),
            Form(
              key: _key,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                    ),
                    // Image(
                    //   image: AssetImage(""),
                    //   width: 100.0,
                    //   height: 100.0,
                    // ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: TextFormField(
                        validator: (input) {
                          if (input.isEmpty) {
                            return 'Please Enter Name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(labelText: 'Name'),
                        onSaved: (input) => name = input,
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.email),
                      title: TextFormField(
                        validator: (b) {
                          if (b.isEmpty) {
                            return 'Please Enter Email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(labelText: 'Email'),
                        onSaved: (b) => email = b,
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: TextFormField(
                        validator: (c) {
                          if (c.isEmpty) {
                            return 'Please Enter Mobile no.';
                          }
                          return null;
                        },
                        decoration: InputDecoration(labelText: 'Mobile no.'),
                        onSaved: (c) => mobile = c,
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: TextFormField(
                        validator: (d) {
                          if (d.isEmpty) {
                            return 'Please Enter Address';
                          }
                          return null;
                        },
                        decoration: InputDecoration(labelText: 'Address'),
                        onSaved: (d) => address = d,
                      ),
                    ),
                    MaterialButton(
                      color: Colors.green,
                      child: Text(
                        "Save",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: _sendToServer,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _sendToServer() async {
    if (_key.currentState.validate()) {
      _key.currentState.save();


      final StorageReference firebaseStorageRef =
      FirebaseStorage.instance.ref().child('image');
      final StorageUploadTask task = 
      firebaseStorageRef.child(name).putFile(_image);

      StorageTaskSnapshot taskSnapshot = await task.onComplete;
      String downloadUrl = await taskSnapshot.ref.getDownloadURL();

      DatabaseReference ref = FirebaseDatabase.instance.reference();
      var data = {
        "name": name,
        "email": email,
        "mobile": mobile,
        "address" : address,
        "imageUrl": downloadUrl

      };
      ref.child("message").child(name).set(data).then((v) {
        _key.currentState.reset();
      });
    } else {
      setState(() {
        _autovalidate = true;
      });
    }
  }
}
