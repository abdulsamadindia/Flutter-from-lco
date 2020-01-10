import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class HomePage extends StatefulWidget {
  final VideoPlayerController videoPlayerController;
  final bool looping;

  HomePage({@required this.videoPlayerController, this.looping, Key key}): super (key:key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ChewieController _chewieController;

  @override
  void initState(){
    super.initState();

    _chewieController= ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 16/9,
      autoInitialize: true,
      looping: widget.looping ,
      errorBuilder: (context, errorMessage){
        return Center(
          child: Text("error message"),);
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Chewie(
        controller: _chewieController,
      ),
      
    );
  }

  @override
  void disponse(){
    super.dispose();
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }
}