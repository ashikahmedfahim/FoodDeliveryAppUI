import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingStarts extends StatelessWidget {
  final int rating;

  RatingStarts(this.rating);

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: 30,
      initialRating: rating.toDouble(),
      direction: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
