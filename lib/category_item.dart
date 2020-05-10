//ethe collums da ik widget kive dikhuga oh pea hai
import 'package:flutter/material.dart';
import 'package:meals_app/meals_screan.dart';
import './meals_screan.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  CategoryItem(this.title, this.color); //constructor
  void selectCategory(BuildContext context) {
    // for navigating to another page
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return MealsScrean();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //inkwell is just like gesuter detector but it has the ripple/splash effct native to android
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: () => selectCategory(context),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            //transition from one color to another
            colors: [color.withOpacity(.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
