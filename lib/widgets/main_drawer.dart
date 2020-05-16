import 'package:flutter/material.dart';

Widget buildListTile(
  String title,
  IconData icon,
  
) {
  //remember icondata object
  return ListTile(
    leading: Icon(
      icon,
      size: 26,
    ),
    title: Text(
      title,
      style: TextStyle(
        fontFamily: 'RobotoCondensed',
        fontSize: 21,
        fontWeight: FontWeight.bold,
      ),
    ),
    onTap: () {},
  );
}

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Container(
            height: 80,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Theme.of(context).primaryColorLight,
            ),
            child: Text(
              'Delimeals',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('meals', Icons.restaurant),
          buildListTile('Filters', Icons.filter_list)
        ],
      ),
    );
  }
}
