import 'package:flutter/material.dart';
//ethe categories da syntax pea hai
class Category {
  final String id;
  final String title;
  final Color color;
  const Category(
      {@required this.id,
      @required this.title,
      this.color = Colors.orange //default
      } //expected arguments
      ); //constructor
}
