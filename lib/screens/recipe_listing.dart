import 'package:flutter/material.dart';
import 'package:recipe_app_m/components/recipe_tile.dart';
import 'package:recipe_app_m/data/back_data.dart';
import 'package:recipe_app_m/models/category.dart';

class RecipeListingScreen extends StatelessWidget {
  RecipeListingScreen({super.key, required this.category});

  Category category;
  var recipeList = [];

  @override
  Widget build(BuildContext context) {

    recipeList = RECIPES.where((recipe) => recipe.categoryId == category.id).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("${category.name} Recipes"),
        centerTitle: true,
        backgroundColor: category.color,
      ),
      body: ListView.builder(
        itemCount: recipeList.length,
        itemBuilder: (_, index) {
        return RecipeTile(recipeList[index], category);
      }),
    );
  }
}