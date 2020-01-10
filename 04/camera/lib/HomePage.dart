import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File _image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera App"),
      ),
      body: Container(
        child:_image==null?Text("no image selected"):Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        onPressed: _opendialogbox,
      ),
    );
  }
  Future<void> _opendialogbox() async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        title: Text('Choose Options',
        style: TextStyle(color: Colors.white),),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text("Open Camera",
                style: TextStyle(color: Colors.white),),
                onTap: openCamera,
              ),
              GestureDetector(
                child: Text("Open Gallery",
                style: TextStyle(color: Colors.white),),
                onTap: openGallery,
              )
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Regret',
            style: TextStyle(color: Colors.white),),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
  Future openCamera()async{
    var image=await ImagePicker.pickImage(source: ImageSource.camera);
   setState(() {
     _image=image; 
   });
  }
  Future openGallery()async{
    var gimage=await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image=gimage;
    });
  }
}