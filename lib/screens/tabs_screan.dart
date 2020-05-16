///for adding tabs to the bottom of the appbar
import 'package:flutter/material.dart';
import './favorites.dart';
import './categories_screan.dart';
import '../widgets/main_drawer.dart';

class TabsScrean extends StatefulWidget {
  @override
  _TabsScreanState createState() => _TabsScreanState();
}

final List<Map<String, Object>> _pages = [
  //list of screans for selected tabs
  {'page': CategoriesScrean(), 'title': 'Categoies'},
  {'page': FavoritesScrean(), 'title': 'favorites'}
];
int _selectedPage = 0;

class _TabsScreanState extends State<TabsScrean> {
  void _selectpage(int index) {
    //this will get the index by itself from ontap in the bottomm bavigation bar
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    /*return DefaultTabController(
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
    );*/
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPage]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPage]['page'],
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectpage,

          ///eh void function(int) accept karda
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('categories'),
              backgroundColor: Theme.of(context).primaryColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              title: Text('favorites'),
              backgroundColor: Theme.of(context).primaryColor,
            ),
          ],
          currentIndex: _selectedPage, //initiallly zero
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.yellow,
          type: BottomNavigationBarType.shifting),
    );
  }
}
