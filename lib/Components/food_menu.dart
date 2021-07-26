import 'package:flutter/material.dart';

class FoodMenu extends StatelessWidget {
  final String imgPath;
  final String food;
  final String rate;
  final String price;

  FoodMenu({this.imgPath, this.food, this.rate, this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 130,
          decoration: BoxDecoration(
            color: Color(0xffFAFAFA),
            //color:Colors.red,
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 90.0,
                  width: 90.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffD9CEC9).withOpacity(0.8),
                        spreadRadius: -7,
                        blurRadius: 7,
                        offset: Offset(0, 9), // changes position of shadow
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  food,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 19.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xffF44336),
                      size: 17.0,
                    ),
                    Text(
                      rate,
                      style: TextStyle(
                        color: Color(0xffF79E98),
                        fontSize: 16.0,
                      ),
                    ),
                    Text(
                      '(250 Review)',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.attach_money,
                          size: 18,
                          color: Color(0xffFCDAA8),
                        ),
                      ),
                      TextSpan(
                        text: price,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
