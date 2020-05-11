import 'package:flutter/material.dart';
import './screens/meals_screan.dart';
import './screens/categories_screan.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daly Meals',
      theme: ThemeData(
        // This is the theme of your application.
        // try changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE)
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Ralway',//edited it the pubspec file
        textTheme: ThemeData.light().textTheme.copyWith(////i m using 3 text themes 
              body1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),//only color
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),//only color
              ),
              title: TextStyle( 
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              )
            ),
      ),
     // home: CategoriesScrean(),//first page that appears on the opening of the app
      routes: {//its a list of routes for navigation we are using 
MealsScrean.routname:(context)=>MealsScrean(),//we dont pass arguments in here
'/':(context) => CategoriesScrean(),//route name for home is simply'/'
      },
    );
  }
}