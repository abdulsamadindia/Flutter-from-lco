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
        case "1":
          player.play("one.mp3");
          break;
        case "2":
          player.play("two.mp3");
          break;
        case "3":
          player.play("three.mp3");
          break;
        case "4":
          player.play("four.mp3");
          break;
        case "5":
          player.play("five.mp3");
          break;
        case "6":
          player.play("six.mp3");
          break;
        case "7":
          player.play("seven.mp3");
          break;
        case "8":
          player.play("eight.mp3");
          break;
        case "9":
          player.play("two.mp3");
          break;
      }
    });
  }

  Widget buildButton(String buttonText, colorcode) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Color(colorcode),
      height: 100.0,
      minWidth: 100.0,
      onPressed: () => buttonPressed(buttonText),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drum Pad"),
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildButton("1", 0XFF3498DB),
              buildButton("2", 0XFFFF4848),
              buildButton("3", 0XFFAE1438),
            ],
          ),
          Divider(
            height: 15.0,
          ),
          // Spacer(flex: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildButton("4", 0XFF2475B0),
              buildButton("5", 0XFF53E0BC),
              buildButton("6", 0XFF218F76),
            ],
          ),
          Divider(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildButton("7", 0XFFBB2CD9),
              buildButton("8", 0XFFE74292),
              buildButton("9", 0XFFEA7773),
            ],
          )
        ],
      )),
    );
  }
}
