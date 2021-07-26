import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String categoryName;

  CategoryWidget(this.categoryName);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 8.0, right: 3.0, top: 5.0, bottom: 5.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              categoryName,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap: () {
                //nothing yet
              },
              child: Row(
                children: [
                  Text(
                    'View all',
                    style: TextStyle(
                      color: Color(0xffFFB74D),
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xffFFB74D),
                    size: 18.0,
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
