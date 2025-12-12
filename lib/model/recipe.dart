
class Recipe {
  String imgLabel; // Label for the image
  String imageUrl; 
  String description;
// Constructor
Recipe(this.imageUrl, this.imgLabel , this.description);
 
  static List<Recipe> samples =
[
  Recipe('assets/images/1.webp',"Pad Thai",'Put juicy king prawns to work in our version of this classic Thai dish, full of vibrant flavours and ready in half an hour.'),
  Recipe('assets/images/2.webp',"Thai pumpkin curry (gaeng fak thong)",'Make the most of seasonal pumpkins or butternut squash in this Thai curry, flavoured with dill, fish sauce and homemade red and green chilli paste.'),
  Recipe('assets/images/3.webp',"Thai green fish curry", 'Perk up your midweek meal with flaky chunks of fish cooked in creamy coconut milk and mild Thai green curry paste, ready in just 10 minutes.'),
  Recipe('assets/images/4.webp',"Sweet Thai basil smash cocktail" , "Make your own sweet Thai basil smash cocktail, invented by the folk at Rosa's Thai cafe in London. All you need is an egg white, lemon juice, Thai basil, sugar syrup and a lot of booze."),
  
];



}



