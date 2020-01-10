import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Burger Rating"),),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Image.network('https://www.seriouseats.com/recipes/images/2015/07/20150728-homemade-whopper-food-lab-35-1500x1125.jpg'),
            SizedBox(
              height: 15.0,
            ),
            RatingBar(
              maxRating: 5,
              emptyIcon: Icons.star_border,
              filledIcon: Icons.star,
              halfFilledIcon: Icons.star_half,
              isHalfAllowed: true,
              onRatingChanged: (rating)=>print(rating),
            )
          ],
        ),
      ),
    );
  }
}