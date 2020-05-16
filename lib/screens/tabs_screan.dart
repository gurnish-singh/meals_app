///for adding tabs to the bottom of the appbar
import 'package:flutter/material.dart';
import './favorites.dart';
import './categories_screan.dart';

class TabsScrean extends StatefulWidget {
  @override
  _TabsScreanState createState() => _TabsScreanState();
}

class _TabsScreanState extends State<TabsScrean> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, //one for favourites and one for all categoies
      initialIndex: 1,//initial tab to render index starts at zero
      child: Scaffold(
        appBar: AppBar(
          title: Text(' Delimeals'),
          bottom: TabBar(
            ///tabbar wil be rendred bottom of the appbar
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'favourites',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CategoriesScrean(),
            FavoritesScrean(),
          ],
        ),
      ),
    );
  }
}
