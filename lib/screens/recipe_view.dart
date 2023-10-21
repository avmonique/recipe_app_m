import 'package:flutter/material.dart';
import 'package:recipe_app_m/models/category.dart';
import 'package:recipe_app_m/models/recipe.dart';

class RecipeViewScreen extends StatelessWidget {
  RecipeViewScreen(this.recipe, this.category, {super.key});

  Recipe recipe;
  Category category;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          title: Text(recipe.name),
          backgroundColor: category.color,
        ),
        body: Column(
          children: [
            AspectRatio(
              aspectRatio: 3/2,
              child: recipe.imageUrl == null ? const Center(child: Text("No Image"),) : Image.network(recipe.imageUrl!, fit: BoxFit.cover,),
            ),
            const TabBar(
              labelColor: Colors.blue,
              tabs: [
                Tab(
                  icon: Icon(Icons.restaurant_menu),
                  text: "Ingredients",
                ),
                Tab(
                  icon: Icon(Icons.directions),
                  text: "Steps",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (recipe.ingredients != null)
                          ...recipe.ingredients!.map((item) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("• $item"),
                              )),
                          )).toList()
                        else const Text("No Ingredients"),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        if (recipe.steps != null)
                          ...recipe.steps!.map((item) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                              child: Text("• $item",
                                style: const TextStyle(fontSize: 16,),
                              ),
                            ),
                          )).toList()
                        else const Text("No steps"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

