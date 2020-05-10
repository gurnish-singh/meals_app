import 'package:flutter/material.dart';
import './category_item.dart';
import './models/dummy_data.dart';

class CategoriesScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('delimeals'),) ,
          body: GridView( // just like list view but with items side by side
          padding : const EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, //pixels
          childAspectRatio: 3 / 2, //height to width relation
          crossAxisSpacing: 20, //width separation between collums
          mainAxisSpacing: 20, //height separaration between collumns
        ),
        //for max crossaxis alignment
        //sliver means scrollable ares in the screan
        //griddelegate takes care of structuring of the grid
        //SliverGridDelegateWithMaxCrossAxisExtent== to provide maximum width to provide as many collumns we can fit
        ///// builder(not used here) is used when u dont know how many items there will be so only items
        /////that are on the screan will get rendered
        children:
            DUMMY_CATEGORIES //apan nu dummy categories cho sirf 2 object chahide ne taan apan usnu map krange
                .map((catData) => CategoryItem(catData.title, catData.color))
                .toList(),
      ),
    );
  }
}
