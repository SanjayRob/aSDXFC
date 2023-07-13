// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:i_am_rich/constants.dart';
import 'package:i_am_rich/pages/Firstpage/image_carousel.dart';

import 'Firstpage/first_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => first_page())));
                      },
                      icon: Icon(
                        Icons.arrow_circle_right,
                      )),
                  margin: EdgeInsets.only(right: 25, bottom: 40, top: 50),
                  decoration: BoxDecoration(
                      color: Colors.orange, shape: BoxShape.circle),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Signed in as: ' + user.email!),
                  MaterialButton(
                    onPressed: () {
                      FirebaseAuth.instance.signOut();
                    },
                    color: Color(0xFF4e2403),
                    child: Text(
                      'sign out',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
