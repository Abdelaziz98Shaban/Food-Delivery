import 'package:flutter/material.dart';
import './Screens/search_screen.dart';

import 'Screens/home_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes:
      {
        HomeScreen.id : (context)=>HomeScreen(),
        SearchScreen.id:(context)=>SearchScreen(),
      },
    );
  }
}
