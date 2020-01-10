import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class full extends StatelessWidget {
  final  datasam1;
  final index;
full({Key key, @required this.datasam1, this.index}): super (key: key);

  

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text(datasam1["articles"][index]["source"]["name"] ),
      ),
      url: datasam1["articles"][index]["url"],
      
    );
  }
}


// Scaffold(
//       appBar: AppBar(
//         title: Text(datasam1["articles"][index]["title"],),
//       ),
//       body: Container(
//         child: Column(
//         children: <Widget>[
//           Image.network(datasam1["articles"][index]["urlToImage"],),
//           Text(datasam1["articles"][index]["content"],),
//         ],
//         ),
//       ),
//     );