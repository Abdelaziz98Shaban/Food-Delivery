import 'package:flutter/material.dart';
import '../Components/search_widget.dart';
import '../Components/food_menu.dart';

class SearchScreen extends StatefulWidget {
  static const String id = 'Search Screen';
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 55.0,
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    right: 10,
                    left: 10.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          size: 30.0,
                        ),
                        Text(
                          'Search food',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.local_mall,
                          color: Colors.black,
                          size: 25.0,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 4.0,
                    top: 8.0,
                    child: Container(
                      height: 17.0,
                      width: 17.0,
                      decoration: BoxDecoration(
                          color: Color(0xffFFB74D), shape: BoxShape.circle),
                      child: Center(child: Text('2')),
                    ),
                  ),
                ],
              ),
            ),
            SearchWidget(
              hintText: 'Spice food',
              hintTextColor: Colors.black,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Found',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '45 results',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    FoodMenu(
                      imgPath: 'images/Garlic-Rosted chicken.png',
                      food: 'Garlic-Roasted',
                      rate: '4.8 ',
                      price: '2.23',
                    ),
                    FoodMenu(
                      imgPath: 'images/french fry.png',
                      food: 'french fry',
                      rate: '4.8 ',
                      price: '5.25',
                    ),
                  ],
                ),
                Column(
                  children: [
                    FoodMenu(
                      imgPath: 'images/Egg Pasta.png',
                      food: 'Egg Pasta',
                      rate: '5 ',
                      price: '6.34',
                    ),
                    FoodMenu(
                      imgPath: 'images/Fruit salad.png',
                      food: 'Fruit Salad',
                      rate: '5 ',
                      price: '3.14',
                    ),
                    FoodMenu(
                      imgPath: 'images/shish tawook.png',
                      food: 'Shish Tawook',
                      rate: '4.5 ',
                      price: '4.89',
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
