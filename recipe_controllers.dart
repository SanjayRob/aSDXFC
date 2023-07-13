import 'package:flutter/material.dart';

class RecipeController {
  TextEditingController name = TextEditingController();
  TextEditingController description = TextEditingController();
  List<IngredientController> ingredients = [];
  List<InstructionController> instructions = [];
}

class IngredientController {
  TextEditingController name = TextEditingController();
  List<IngredientStepController> steps = [];
}

class IngredientStepController {
  TextEditingController text = TextEditingController();
}

class InstructionController {
  TextEditingController text = TextEditingController();
}
