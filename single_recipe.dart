import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:i_am_rich/pages/models/recipe_controllers.dart';

import '../constants.dart';
import 'addRecipe.dart';
import 'ingredient_step_list.dart';

class Recipe extends StatefulWidget {
  final RecipeController controller;

  Recipe({Key? key, required this.controller}) : super(key: key);

  @override
  State<Recipe> createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  PlatformFile? pickedImg;

  Future selectImg() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.image);

    if (result == null) return null;

    setState(() {
      pickedImg = result.files.first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(primary: KActiveColor),
              onPressed: selectImg,
              icon: Icon(Icons.add),
              label: Text('Add Image')),
        ),

        SizedBox(height: 30),
        RecipeTextField(
          hint: 'Title',
          controller: widget.controller.name,
        ),
        SizedBox(height: 30),
        RecipeTextField(
          hint: 'Description',
          controller: widget.controller.description,
        ),

        SizedBox(height: 30),

        IngredientStepList(controllers: widget.controller.ingredients),

        SizedBox(height: 30),
//CONFIRM PASWORD
        RecipeTextField(
            hint: 'Recipe/Instructions', controller: TextEditingController()),
      ],
    );
  }
}
