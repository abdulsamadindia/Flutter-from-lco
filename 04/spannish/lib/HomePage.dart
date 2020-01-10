import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  buttonPressed(String buttonText) {
    AudioCache player = AudioCache();
    setState(() {
      switch (buttonText) {
        case "One":
          player.play("one.wav");
          break;
        case "Two":
          player.play("two.wav");
          break;
        case "Three":
          player.play("three.wav");
          break;
        case "Four":
          player.play("four.wav");
          break;
        case "Five":
          player.play("five.wav");
          break;
        case "Six":
          player.play("six.wav");
          break;
        case "Seven":
          player.play("seven.wav");
          break;
        case "Eight":
          player.play("eight.wav");
          break;
        case "Nine":
          player.play("nine.wav");
          break;
        case "Ten":
          player.play("ten.wav");
          break;
        default:
      }
    });
  }

  Widget buildButton(String buttonText, colorcode) {
    return MaterialButton(
      padding: EdgeInsets.all(20.0),
      height: 70,
      minWidth: 160,
      child: Text(buttonText,
          style: TextStyle(fontSize: 20.0, 
          fontWeight: FontWeight.w900)),
      color: Color(colorcode),
      textColor: Colors.white,
      onPressed: () => buttonPressed(buttonText),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spannish Number"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              height: 50.0,
              width: 400.0,
              child: Text(
                "Touch any Number",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 35.0,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.blue[600],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildButton("One", 0XFF3498DB),
                      buildButton("Two", 0XFFFF4848),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildButton("Three", 0XFFAE1438),
                      buildButton("Four", 0XFF2475B0),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildButton("Five", 0XFF53E0BC),
                      buildButton("Six", 0XFF218F76),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildButton("Seven", 0XFF3498DB),
                      buildButton("Eight", 0XFFE74292),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildButton("Nine", 0XFFEA7773),
                      buildButton("Ten", 0XFFBB2CD9),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
