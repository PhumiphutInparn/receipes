import 'package:receipes/model/ingredient.dart';

class Recipe {
  String imgLabel; // Label for the image
  String imageUrl; 
  String description;
  List<Ingredient>ingredient;
// Constructor
  Recipe(this.imageUrl, this.imgLabel , this.description , this.ingredient);
 
  static List<Recipe> samples =
  [
    Recipe(
      'assets/images/1.webp',"Pad Thai",'Put juicy king prawns to work in our version of this classic Thai dish, full of vibrant flavours and ready in half an hour.', 
      [
       Ingredient(name: 'Rice Noodles', quantity: 200, unit: 'g'),
        Ingredient(name: 'Shrimp', quantity: 5-6, unit: 'pcs'),
        Ingredient(name: 'Pad Thai Sauce', quantity: 3, unit: 'tbsp'),
        
      ],
    ),

    Recipe(
        'assets/images/2.webp' , "Thai pumpkin curry (gaeng fak thong)",'Make the most of seasonal pumpkins or butternut squash in this Thai curry, flavoured with dill, fish sauce and homemade red and green chilli paste.',
        [
          Ingredient(name: 'Thai pumpkin (Fak Thong)', quantity: 2, unit: 'cups'),
          Ingredient(name: 'Red curry paste', quantity: 2, unit: 'tbsp'),
          Ingredient(name: 'Coconut milk', quantity: 1, unit: 'cup'),
          Ingredient(name: 'Thai basil leaves', quantity: 2, unit: 'cup'),
        ],
      ),


     Recipe(
        'assets/images/3.webp' , "Thai green fish curry", 'Perk up your midweek meal with flaky chunks of fish cooked in creamy coconut milk and mild Thai green curry paste, ready in just 10 minutes.',
        [
          Ingredient(name: 'Fish fillets (Tilapia or Snapper)', quantity: 300, unit: 'g'),
          Ingredient(name: 'Thai green curry paste', quantity: 2, unit: 'tbsp'),
          Ingredient(name: 'Coconut milk', quantity: 1, unit: 'cups'),
          Ingredient(name: 'Thai eggplant', quantity: 4-5, unit: 'pcs'),
          Ingredient(name: 'Sweet basil leaves', quantity: 1, unit: 'cup'),
          Ingredient(name: 'Fish sauce', quantity: 1, unit: 'tbsp'),
        ],
      ),

      
     Recipe(
        'assets/images/4.webp' , "Sweet Thai basil smash cocktail" , "Make your own sweet Thai basil smash cocktail, invented by the folk at Rosa's Thai cafe in London. All you need is an egg white, lemon juice, Thai basil, sugar syrup and a lot of booze.",
        [
          Ingredient(name: 'Sweet Thai basil leaves', quantity: 8-10, unit: 'leaves'),
          Ingredient(name: 'Gin or Vodka', quantity: 2, unit: 'oz'),
          Ingredient(name: 'Fresh lime juice', quantity: 1, unit: 'oz'),
          Ingredient(name: 'Simple syrup', quantity: 1, unit: 'oz'),
          Ingredient(name: 'Ice cubes', quantity: 2, unit: 'cups'),
        ],
      ),
  ];



}



