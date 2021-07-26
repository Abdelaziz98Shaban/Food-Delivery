import 'package:flutter/material.dart';

class TopCategories extends StatelessWidget {

  final IconData foodIcon;
  final String foodName;
  final String foodplaces ;


  TopCategories({this.foodIcon, this.foodName, this.foodplaces});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:5.0,vertical: 4.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
            color: Color(0xffFAFAFA),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 35.0,
                    width: 35.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffFAF3E9),
                    ),
                    child: Icon(
                      foodIcon,
                      color: Color(0xffFEB402),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                     foodName,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                     foodplaces,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xffA0A5AB),
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
