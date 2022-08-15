import 'package:flutter/material.dart';
import 'package:uitry7/pages/HomePage.dart';
import 'package:uitry7/pages/ItemPage.dart';
import 'package:uitry7/pages/SplashScreen.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {

        "/" : (context) => SplashScreen(),
        "homePage" : (context) => HomePage(),
        "itemPage" : (context) => ItemPage(),

      },
    );
  }
}
