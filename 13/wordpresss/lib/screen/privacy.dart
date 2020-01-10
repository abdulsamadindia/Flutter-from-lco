import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class Privacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Policy"),
      ),
      body: Container(
        child: Html(data:"data"),
      ),
      
    );
  }
}