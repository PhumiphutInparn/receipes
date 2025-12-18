import 'recipe.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({super.key, required this.recipe});

  @override
  State<RecipeDetail> createState() {
    return RecipeDetailState();
  }
}

class RecipeDetailState extends State<RecipeDetail> {
  // ย้ายตัวแปรมาไว้ที่นี่เพื่อให้จำค่าตอนเลื่อน Slider ได้
  int sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uniqlo'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(widget.recipe.imageUrl),
            width: 200,        
            height: 200,       
            fit: BoxFit.cover, 
          ),
            const SizedBox(height: 10.0),
            Text(
              widget.recipe.imgLabel,
              style: GoogleFonts.kanit(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              widget.recipe.description,
              style: GoogleFonts.kanit(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),

            Slider(
              min: 1.0,
              max: 10.0,
              divisions: 10,
              label: '$sliderValue servings',
              value: sliderValue.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  sliderValue = newValue.toInt();
                });
              },
            ),

            Expanded(
              child: ListView.builder(
                itemCount: widget.recipe.ingredient.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredient[index];
                  int calculatedQuantity =  ingredient.quantity * sliderValue ;
                  int calculatedPrice =  ingredient.price * sliderValue ;

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    child: Text( 
                      '$calculatedQuantity ชิ้น $calculatedPrice บาท. ${ingredient.name}',
                        style: GoogleFonts.kanit(fontSize: 18.0),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}