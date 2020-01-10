import 'package:flutter/material.dart';
import 'dart:io';
import 'package:firebase_database/firebase_database.dart';

class EditContactPage extends StatefulWidget {
  final String text, email, mobile, address, url;

  EditContactPage({Key key, this.text, this.email, this.address, this.mobile, this.url}): super(key: key);
  @override
  _EditContactPageState createState() => _EditContactPageState();
}

class _EditContactPageState extends State<EditContactPage> {
  var editemail= TextEditingController();
  var editmobile = TextEditingController();
  var editaddress = TextEditingController();

  void initState(){
    super.initState();
    setState(() {
     editemail.text= widget.email;
     editmobile.text= widget.mobile;
     editaddress.text= widget.address; 
    });
  }
  File sampleImage;
  String url;

  GlobalKey<FormState> _key = GlobalKey();
  bool _autovalidate = false;
  String name, phone, email, address;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
    );
  }
}