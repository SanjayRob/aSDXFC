// ignore_for_file: avoid_function_literals_in_foreach_calls, prefer_const_constructors

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import 'models/recipe_controllers.dart';
import 'single_recipe.dart';

class AddRecipePage extends StatefulWidget {
  const AddRecipePage({Key? key}) : super(key: key);

  @override
  _AddRecipePageState createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {
  RecipeController recipeController = RecipeController();

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _instructionsController = TextEditingController();
  final _ingredientTitleController = TextEditingController();

  PlatformFile? pickedImg;

  List<TextEditingController> _ingredientsControllers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60),
                Center(
                  child: Text(
                    'Share Your Recipie With The World',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.bebasNeue(
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Recipe(
                  controller: recipeController,
                ),
                SizedBox(height: 100),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.save),

                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(), primary: KActiveColor),
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: SizedBox(height: 250),
                    // ),
                    // ElevatedButton.icon(
                    //     onPressed: () {},
                    //     icon: Icon(Icons.save),
                    //     label: Text('save'),
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class RecipeTextField extends StatelessWidget {
  const RecipeTextField({
    Key? key,
    required this.hint,
    required this.controller,
  }) : super(key: key);
  final String hint;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
            ),
          ),
        ),
      ),
    );
  }
}

class IngredientTextField extends StatelessWidget {
  const IngredientTextField({
    Key? key,
    required this.controller,
  }) : super(key: key);
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Ingredient',
            ),
          ),
        ),
      ),
    );
  }
}
