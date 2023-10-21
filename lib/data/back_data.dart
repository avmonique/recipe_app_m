import 'package:flutter/material.dart';
import 'package:recipe_app_m/models/category.dart';
import 'package:recipe_app_m/models/recipe.dart';

List<Category> CATEGORIES = [
  Category(id: 1, name: "Ilocano", color: Colors.blue),
  Category(id: 2, name: "Kapampangan", color: Colors.yellow),
  Category(id: 3, name: "Bicol", color: Colors.amber),
  Category(id: 4, name: "Tagalog", color: Colors.red),
  Category(id: 5, name: "Visayas", color: Colors.green),
  Category(id: 6, name: "Zamboanga"),
];

List<Recipe> RECIPES = [
  Recipe(id: 1, categoryId: 1, name: "Pinapaitan",
  ingredients: const [
    "1 lb beef heart cubed",
    "1 lb beef small intestine cleaned",
    "1 lb beef tripe cleaned",
    "1/2 lb beef liver cubed",
    "1 lb beef kidney cubed",
    "22 grams Knorr Sinigang sa Sampaloc Mix",
    "1 piece onion chopped",
    "3 thumbs ginger minced",
    "5 cloves garlic crushed",
    "3 piece lug_green sliced",
    "8 cups water",
    "beef bile to taste",
    "Salt and pepper to taste",
    "3 tablespoons cooking oil",
  ],
  steps: [
    "Wash beef tripe and small intestine. Boil with ginger and dried bay leaves for 45 minutes. Remove from the pot and let it cool down. Slice into bite-size pieces.",
    "Heat oil in a pan. Sauté onion, garlic, and ginger until onion softens.",
    "Add beef heart and kidney. Sauté until it turns light brown.",
    "Put the tripe and small intestines into the pot. Cook for 2 minutes.",
    "Pour water into the pot. Let is boil. Adjust heat to low. Continue boiling until beef heart and kidney tenderizes.",
    "Add beef liver and bile. Stir. Cook for 15 minutes in medium heat.",
    "Add Knorr Sinigang sa Sampaloc Recipe Mix.",
    "Put long green peppers into the pot and season with salt and ground black pepper. Stir. Cook for 2 minutes.",
    "Transfer to a serving bowl. Serve hot.",
  ],
  imageUrl: "https://panlasangpinoy.com/wp-content/uploads/2020/08/beef-papaitan.jpg",
  duration: 130,
  ),
  Recipe(id: 2, categoryId: 1, name: "Pinakbet",
  
  ),
  Recipe(id: 3, categoryId: 2, name: "Sisig",
  ingredients: [
    "1/2 kilo pork cheeks",
    "3 pcs chicken liver",
    "100 grams onions coarsely chopped",
    "6 pcs calamansi extract the juice",
    "1 Tbsp. rock salt",
    "1/8 tsp. ground pepper",
    "1 Tbsp. margarine",
    "3 pcs siling labuyo",
  ],
  steps: [
    "Blanch the pork cheeks and remove hairs or other impurities. Then put in a pot with boiling water and boil for 20 to 30 minutes. Then remove from the pot and drain. Set aside and cool.",
    "Clean the chicken livers with running water and remove the bile if there is any and other impurities. Skewer in bamboo sticks and grill together with the pork cheeks. Grill until brown and crispy.",
    "Then remove from the grill and cool. Chop into very small pieces the pork cheeks and the chicken liver then put in a bowl. In the same bowl add chopped onions, salt, pepper and calamansi juice. Mix thoroughly until all the ingredients are well combined.",
    "Heat the sizzling plate on top of the stove until smoking. Add the margarine and melt in the sizzling plate. Then put the sisig on the plate and stir fry using a pair of spoon for a minute.",
    "Then turn off heat and transfer the sizzling plate on the wooden tray. Garnish with siling labuyo and slices of calamansi. Serve hot.",
  ],
  imageUrl: "https://siuala.com/wp-content/uploads/Sizzling-Sisig-by-Aling-Lucing-600.jpg",
  duration: 110,
  ),
  Recipe(id: 4, categoryId: 3, name: "Bicol Express"),

];