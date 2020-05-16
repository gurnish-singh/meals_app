import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDetailScrean extends StatelessWidget {
  static const routname = '/meal-detail';

  Widget buildSectionTitle(BuildContext context, String title) {
    //function returning a conatiner widget for title
    //to avoid code duplication
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Text(title, style: Theme.of(context).textTheme.title),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white24,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
        ),
        height: 250,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        child: child);
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;

    //etho sane argumnets chakle
    final filteredMeals = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(filteredMeals.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 250,
              child: Image.network(filteredMeals.imageUrl, fit: BoxFit.cover),
            ),
            /////title here//////
            buildSectionTitle(context, 'Ingredients'),
            ////////ingredients here////////
            buildContainer(
              ListView.builder(
                itemCount: filteredMeals.ingredients.length,
                itemBuilder: (ctx, index) => Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('#${(index + 1)}'),
                      ),
                      title: Text(
                        filteredMeals.ingredients[index],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
            ),
            /////steps title here//////////

            buildSectionTitle(context, 'Steps'),
            ///////Steps here /////////
            buildContainer(
              ListView.builder(
                itemCount: filteredMeals.steps.length,
                itemBuilder: (ctx, index) => Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('#${(index + 1)}'),
                      ),
                      title: Text(
                        filteredMeals.steps[index],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
            )//buildContainer
          ],
        ),
      ),
    );
  }
}
