// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_am_rich/pages/Firstpage/section_title.dart';
import 'package:i_am_rich/pages/Firstpage/slide.dart';

import '../../constants.dart';
import '../../demoData.dart';
import 'image_carousel.dart';

class Recipe extends StatefulWidget {
  final int idx;
  final List<Map<String, dynamic>> list;

  const Recipe({Key? key, required this.idx, required this.list})
      : super(key: key);

  @override
  _RecipeState createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.list[widget.idx]['name'],
                  style: GoogleFonts.bebasNeue(
                    fontSize: 38,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: Center(
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(widget.list[widget.idx]['image']),
                      width: 280,
                      height: 280,
                    ),
                    Text(
                      'Ingredients',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      widget.list[widget.idx]['ingre1'],
                    ),
                    Text(
                      widget.list[widget.idx]['ingre2'],
                    ),
                    Text(
                      widget.list[widget.idx]['ingre3'],
                    ),
                    Text(
                      widget.list[widget.idx]['ingre4'],
                    ),
                    Text(
                      widget.list[widget.idx]['ingre5'],
                    ),
                    Text(
                      widget.list[widget.idx]['ingre6'],
                    ),
                    Text(
                      widget.list[widget.idx]['ingre7'],
                    ),
                    Text(
                      widget.list[widget.idx]['ingre8'],
                    ),
                    SizedBox(height: 50),
                    Text(
                      'Instructions',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      widget.list[widget.idx]['instruc1'],
                    ),
                    Text(
                      widget.list[widget.idx]['instruc2'],
                    ),
                    Text(
                      widget.list[widget.idx]['instruc3'],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
