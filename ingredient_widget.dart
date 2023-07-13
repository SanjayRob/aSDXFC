import 'package:flutter/material.dart';
import 'package:i_am_rich/pages/ingredient_step.dart';
import 'package:i_am_rich/pages/models/recipe_controllers.dart';

import '../constants.dart';
import 'addRecipe.dart';

class IngredientWidget extends StatefulWidget {
  final Function() deleteCallback;
  final IngredientController controller;

  const IngredientWidget(
      {Key? key, required this.controller, required this.deleteCallback})
      : super(key: key);

  @override
  State<IngredientWidget> createState() => _IngredientWidgetState();
}

class _IngredientWidgetState extends State<IngredientWidget> {
  var controllers = <TextEditingController>[];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            RecipeTextField(
              hint: 'Ingredient Title',
              controller: widget.controller.name,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: KActiveColor),
              onPressed: () {
                setState(() {
                  widget.controller.steps.add(IngredientStepController());
                });
              },
              child: Icon(
                Icons.add,
              ),
            )
          ],
        ),
        Column(
          children: controllers
              .map((e) => IngredientStep(
                    textController: e,
                    deleteCallback: () {},
                  ))
              .toList(),
        )
      ],
    );
  }
}
