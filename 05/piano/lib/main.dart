import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  playPiano(btnTxt){
  AudioCache player = AudioCache();
  setState(() {
      switch (btnTxt) {
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
          player.play("four.mp3");
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
 
 
  Widget buildButton (String btnTxt, ccode){
    return MaterialButton(
      color: Color(ccode),
      height: 250.0,
      minWidth: 67.8,
      onPressed: () => playPiano(btnTxt),
    );

  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Piano"),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                buildButton("1", 0XFF99AAAB),
                buildButton("2", 0XFFDAE0E2),
                buildButton("3", 0XFF616C6F),
                buildButton("4", 0XFFDAE0E2),
                buildButton("5", 0XFF616C6F),
                buildButton("6", 0XFFDAE0E2),
                buildButton("7", 0XFF616C6F),
                buildButton("8", 0XFFDAE0E2),
                buildButton("9", 0XFF616C6F),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
