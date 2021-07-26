import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Components/search_widget.dart';
import '../Components/bottom_icons.dart';
import '../Components/category_widget.dart';
import '../Components/food_menu.dart';
import '../Components/top_categories.dart';
import '../constans.dart';

enum downIcons { gps, explore, assignment, boobmark, contacts }

class HomeScreen extends StatefulWidget {
  static const String id = 'Home Screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  downIcons selectedIcon;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              color: Color(0xff85A335),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 85.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(35.0),
                  bottomLeft: Radius.circular(35.0),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        'Good Afternoon',
                        style: headerText,
                      ),
                    ),
                    Expanded(
                      child: SearchWidget(
                        hintText: 'Restaurant or food',
                        hintTextColor: Color(
                          0xFFF9F9F9,
                        ),
                      ),
                    ),
                    Expanded(child: CategoryWidget('Featured Item')),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            FoodMenu(
                              imgPath: 'images/Egg Pasta.png',
                              food: 'Egg Pasta',
                              rate: '5 ',
                              price: '6.34',
                            ),
                            FoodMenu(
                              imgPath: 'images/Garlic-Rosted chicken.png',
                              food: 'Garlic-Roasted',
                              rate: '4.8 ',
                              price: '2.23',
                            ),
                            FoodMenu(
                              imgPath: 'images/shish tawook.png',
                              food: 'Shish Tawook',
                              rate: '4.5 ',
                              price: '4.89',
                            ),
                            FoodMenu(
                              imgPath: 'images/french fry.png',
                              food: 'french fry',
                              rate: '4.8 ',
                              price: '5.25',
                            ),
                            FoodMenu(
                              imgPath: 'images/Fruit salad.png',
                              food: 'Fruit Salad',
                              rate: '5 ',
                              price: '3.14',
                            ),
                          ],
                        ),
                      ),
                    ),
                    CategoryWidget('Top Categories'),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TopCategories(
                                foodIcon: FontAwesomeIcons.hamburger,
                                foodName: 'Burger',
                                foodplaces: '1250 Places',
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              TopCategories(
                                foodIcon: FontAwesomeIcons.breadSlice,
                                foodName: 'Bread',
                                foodplaces: '160 Places',
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TopCategories(
                                foodIcon: FontAwesomeIcons.cheese,
                                foodName: 'Cheese',
                                foodplaces: '450 Places',
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              TopCategories(
                                foodIcon: FontAwesomeIcons.cookie,
                                foodName: 'Cookie',
                                foodplaces: '310 Places',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BottomIcons(
                        onPress: () {
                          setState(() {
                            selectedIcon = downIcons.gps;
                          });
                        },
                        bottomIcon: Icons.gps_fixed,
                        iconColor: selectedIcon == downIcons.gps
                            ? Colors.white
                            : Color(0xff708D2D),
                      ),
                      BottomIcons(
                        onPress: () {
                          setState(() {
                            selectedIcon = downIcons.explore;
                          });
                        },
                        bottomIcon: Icons.explore,
                        iconColor: selectedIcon == downIcons.explore
                            ? Colors.white
                            : Color(0xff708D2D),
                      ),
                      BottomIcons(
                        onPress: () {
                          setState(() {
                            selectedIcon = downIcons.assignment;
                          });
                        },
                        bottomIcon: Icons.assignment,
                        iconColor: selectedIcon == downIcons.assignment
                            ? Colors.white
                            : Color(0xff708D2D),
                      ),
                      BottomIcons(
                        onPress: () {
                          setState(() {
                            selectedIcon = downIcons.boobmark;
                          });
                        },
                        bottomIcon: Icons.bookmark,
                        iconColor: selectedIcon == downIcons.boobmark
                            ? Colors.white
                            : Color(0xff708D2D),
                      ),
                      BottomIcons(
                        onPress: () {
                          setState(() {
                            selectedIcon = downIcons.contacts;
                          });
                        },
                        bottomIcon: Icons.contact_phone,
                        iconColor: selectedIcon == downIcons.contacts
                            ? Colors.white
                            : Color(0xff708D2D),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
