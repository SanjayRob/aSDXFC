import 'package:flutter/material.dart';

import '../constants.dart';
import 'addRecipe.dart';

class IngredientStep extends StatefulWidget {
  final TextEditingController textController;
  final Function() deleteCallback;

  IngredientStep(
      {Key? key, required this.textController, required this.deleteCallback})
      : super(key: key);

  @override
  State<IngredientStep> createState() => _IngredientStepState();
}

class _IngredientStepState extends State<IngredientStep> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IngredientTextField(controller: widget.textController),
        ButtonTheme(
          minWidth: 10,
          height: 10,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: KmainColor,
                shape: const CircleBorder(),
              ),
              onPressed: widget.deleteCallback,
              child: const Icon(
                Icons.delete_rounded,
                color: Colors.white,
              )),
        )
      ],
    );
  }
}
