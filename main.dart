import 'package:i_am_rich/pages/Firstpage/see_allr.dart';
import 'package:i_am_rich/pages/addRecipe.dart';

import 'auth/main_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/add-recipe': (context) => AddRecipePage(),
      },
      home: MainPage(),
    );
  }
}
