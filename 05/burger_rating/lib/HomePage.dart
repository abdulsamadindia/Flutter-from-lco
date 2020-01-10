import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rate Application"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Image.network("https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwjzyurdrdDkAhVhnY8KHUPhCPAQjRx6BAgBEAQ&url=https%3A%2F%2Ftasty.co%2Frecipe%2Fhomemade-big-massive-burger&psig=AOvVaw1plrqImLtzJKXXL8ENhCLM&ust=1568551967024578"),
            SizedBox(
              height: 20.0,
            ),
            
          ],
        ),
      ),
      
    );
  }
}