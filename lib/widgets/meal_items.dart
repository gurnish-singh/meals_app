//ik ik meal da da overal layout kive render houga oh pea
import 'package:flutter/material.dart';
import '../models/meals.dart';
import '../screens/meal_detail_screan.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  MealItem({@required this.id,
      @required this.title,
      @required this.imageUrl,
      @required this.duration,
      @required this.complexity,
      @required this.affordability});
/*String get complexityText{///// a gettter to return a string value based on the complexity enum
  if (complexity==Complexity.Simple){
    return 'simple';
  }
  else if (complexity==Complexity.Hard)
{
  return 'Hard';

}
else{
  return'complex';
}
}*/
  String get complexityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'simple';
        break;
      case Complexity.Hard:
        return 'Hard';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      default:
        return 'Unknown';
        break;
    }
  }
  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      default:
        return 'Unknown';
        break;
    }
  }

  void selectMeal(BuildContext context)// to go to the ohter screan
   {
     Navigator.of(context).pushNamed(MealDetailScrean.routname,arguments:id,);
   }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              //widhets one over other
              children: <Widget>[
                ClipRRect(
                  //to force a widget as a child to fit in a certain form;
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                        15), //only left and right corners will be circular
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity, //aquire as much width possible
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  //positioned widget only works under stack
                  bottom: 20, //pixels
                  right: 10,
                  left: 50,
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black45,
                    ),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,

                      ///whether the text should break at soft line breaks
                      overflow:
                          TextOverflow.fade, //overflowing text will fade away,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(
                20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.schedule),
                      SizedBox(
                        width: 6,
                      ),
                      Text('$duration min'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.work),
                      SizedBox(
                        width: 6,
                      ),
                      Text(complexityText),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.attach_money),
                      SizedBox(
                        width: 6,
                      ),
                      Text(affordabilityText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
