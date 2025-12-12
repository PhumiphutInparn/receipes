import 'recipe.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipeDetail extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetail({super.key, required this.recipe});
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Detail'),
      ),
      body: Center(
        
        child: Column(
        children: <Widget>[
        Image(image: AssetImage(recipe.imageUrl)),
        const SizedBox(height: 14.0),
        Text(recipe.imgLabel , 
         style: GoogleFonts.kanit(
          fontSize: 40.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          
        ),
        ),


        Text(recipe.description
        , style: GoogleFonts.kanit(
          fontSize: 20.0,
          
          color: Colors.black,
        )
        ),
  ],
    ), 
        
      ),
    );
  }
}