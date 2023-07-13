import 'package:flutter/material.dart';
import 'package:i_am_rich/pages/ingredient_widget.dart';
import 'package:i_am_rich/pages/models/recipe_controllers.dart';

class IngredientStepList extends StatefulWidget {
  final List<IngredientController> controllers;

  const IngredientStepList({Key? key, required this.controllers})
      : super(key: key);

  @override
  State<IngredientStepList> createState() => _IngredientStepListState();
}

class _IngredientStepListState extends State<IngredientStepList> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: widget.controllers
            .map((e) => IngredientWidget(
                controller: e,
                deleteCallback: () {
                  setState(() {
                    widget.controllers.remove(e);
                  });
                }))
            .toList());
  }
}

// setState(() {
//   if (ingredients.length == 1) {
//     ingredients.removeAt(0);
//     _ingredientsControllers.removeAt(0);
//   } else {
//     ingredients.removeAt(idx - 1);
//     _ingredientsControllers.removeAt(idx - 1);
//   }
// });
