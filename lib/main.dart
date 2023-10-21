import 'package:flutter/material.dart';
import 'package:recipe_app_m/screens/category_listing.dart';

void main() {
  runApp(const PinoyRecipesApp());
}

class PinoyRecipesApp extends StatelessWidget {
  const PinoyRecipesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoryListingScreen(),
    );
  }
}
