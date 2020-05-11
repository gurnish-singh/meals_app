//ik ik meal da da overal layout kive render houga oh pea
import 'package:flutter/material.dart';
import '../models/meals.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  MealItem(
      @required this.title,
      @required this.imageUrl,
      @required this.duration,
      @required this.complexity,
      @required this.affordability);
  void selectMeal() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(//to force a widget as a child to fit in a certain form;
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),//only left and right corners will be circular
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,//aquire as much width possible
                    fit: BoxFit.fill,
                  ),
                ) //to force a widget as a child to force in a certain form;
              ],
            )
          ],
        ),
      ),
    );
  }
}
