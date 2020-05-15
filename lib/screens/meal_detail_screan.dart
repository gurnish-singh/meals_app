import 'package:flutter/material.dart';
class MealDetailScrean extends StatelessWidget {
  static const  routname='/meal-detail';
  @override
  Widget build(BuildContext context) {
   final mealId=ModalRoute.of(context).settings.arguments as String ; ///etho sane argumnets chakle
    return Scaffold(
      appBar: AppBar(title: Text('data'),),
          body: Container(
        child: Text(' something $mealId !'),
        
      ),
    );
  }
}