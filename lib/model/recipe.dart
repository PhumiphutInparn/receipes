class Recipe {
  String imgLabel; // Label for the image
  String imageUrl; 
// Constructor
Recipe(this.imageUrl, this.imgLabel);
 
  static List<Recipe> samples =
[
  Recipe('assest/images/1.webp',"Pad Thai"),
  Recipe('assest/images/2.webp',"Thai pumpkin curry (gaeng fak thong)"),
  Recipe('assest/images/3.webp',"Thai green fish curry"),
  Recipe('assest/images/4.webp',"Sweet Thai basil smash cocktail"),
];



}

