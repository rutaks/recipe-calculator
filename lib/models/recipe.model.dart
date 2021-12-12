import 'package:getting_started_app/models/ingredient.mode.dart';

class Recipe {
  String label;
  String imgUrl;
  int servings;
  List<Ingredient> ingredients;

  Recipe(this.label, this.imgUrl, this.servings, this.ingredients);

  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/2126711929_ef763de2b3_w.jpeg',
      4,
      [
        Ingredient(
          1,
          'box',
          'Spaghetti',
        ),
        Ingredient(
          4,
          'item',
          'Frozen Meatballs',
        ),
        Ingredient(
          0.5,
          'jar',
          'sauce',
        ),
      ],
    ),
    Recipe(
      'Tomato Soup',
      'assets/27729023535_a57606c1be.jpeg',
      2,
      [
        Ingredient(
          1,
          'can',
          'Tomato Soup',
        ),
      ],
    ),
    Recipe(
      'Grilled Cheese',
      'assets/3187380632_5056654a19_b.jpeg',
      1,
      [
        Ingredient(
          2,
          'slices',
          'Cheese',
        ),
        Ingredient(
          2,
          'slices',
          'Bread',
        ),
      ],
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/15992102771_b92f4cc00a_b.jpeg',
      24,
      [
        Ingredient(
          4,
          'cups',
          'flour',
        ),
        Ingredient(
          2,
          'cups',
          'sugar',
        ),
        Ingredient(
          0.5,
          'cups',
          'chocolate chips',
        ),
      ],
    ),
  ];
}
