// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:i_am_rich/constants.dart';
import 'package:i_am_rich/demoData.dart';
import 'package:i_am_rich/imgPicker.dart';
import 'package:i_am_rich/pages/Firstpage/section_title.dart';
import 'package:i_am_rich/pages/Firstpage/see_allr.dart';
import 'package:i_am_rich/pages/Firstpage/slide.dart';

import 'image_carousel.dart';

class first_page extends StatefulWidget {
  const first_page({Key? key}) : super(key: key);

  @override
  _first_pageState createState() => _first_pageState();
}

class _first_pageState extends State<first_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ////Im using Costom Scrool view
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Column(
              children: [
                Text(
                  "Delivery to".toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(color: KActiveColor),
                ),
                Text(
                  "San Francisco",
                  style: TextStyle(color: Color(0xFF4e2403)),
                )
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/add-recipe');
                  },
                  child: Icon(Icons.add),
                  style: ElevatedButton.styleFrom(
                      shape: CircleBorder(), primary: KActiveColor),
                ),
              )
            ],
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: ImageCarousel(),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: "Featured Recipies",
                press: () {
                  Navigator.pushNamed(context, '/see-r');
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demoMediumCardData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: RestaurantInfoMediumCard(
                      title: demoMediumCardData[index]['name'],
                      location: demoMediumCardData[index]['location'],
                      image: demoMediumCardData[index]['image'],
                      deliveryTime: demoMediumCardData[index]['deliverTime'],
                      rating: demoMediumCardData[index]['rating'],
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Recipe(
                                      idx: index,
                                      list: demoMediumCardData,
                                    )));
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),

          /////second part
          SliverPadding(
            padding: EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: "Featured Drinks",
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demoBottomCardData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: RestaurantInfoMediumCard(
                      title: demoBottomCardData[index]['name'],
                      location: demoBottomCardData[index]['location'],
                      image: demoBottomCardData[index]['image'],
                      deliveryTime: demoBottomCardData[index]['deliverTime'],
                      rating: demoBottomCardData[index]['rating'],
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Recipe(
                                      idx: index,
                                      list: demoBottomCardData,
                                    )));
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
