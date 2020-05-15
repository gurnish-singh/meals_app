import 'package:flutter/material.dart';
import 'package:meals_ap/widgets/meal_items.dart';
import '../dummy_data.dart';
import '../widgets/meal_items.dart';

class MealsScrean extends StatelessWidget {
  //final String id;
  //final String title;

  // MealsScrean(this.id,this.title);//constructor
  static const routname = '/category-meals'; //to avoid errors in mistyping
  @override
  Widget build(BuildContext context) {
    final routeargs = ModalRoute.of(context).settings.arguments
        as Map<String, String>; //ratta
    final title = routeargs['title'];
    final id = routeargs['id'];
    final filteredMeals = DUMMY_MEALS.where((meal) {
      // filtered meals are the meals that have same category id
      //meal is iterable
      return meal.categories.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        // here only those items are rendered that are currently on the screan
        itemBuilder: (context, index) {
          return MealItem(
              id: filteredMeals[index].id,
              title: filteredMeals[index].title,
              imageUrl: filteredMeals[index].imageUrl,
              duration: filteredMeals[index].duration,
              complexity: filteredMeals[index].complexity,
              affordability: filteredMeals[index].affordability);
        },
        itemCount: filteredMeals.length,
      ),
    );
  }
}
