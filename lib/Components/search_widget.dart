import 'package:flutter/material.dart';
import '../Screens/search_screen.dart';


class SearchWidget extends StatelessWidget {

  final String hintText;
  final Color hintTextColor ;


  SearchWidget({this.hintText, this.hintTextColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: TextField(
            decoration: InputDecoration(
                fillColor: Color(0xFFF9F9F9),
                filled: true,
                hintText:hintText,
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xffFFB74D),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35.0),
                  borderSide: BorderSide.none,
                )),
          ),
        ),
        Expanded(
          child: IconButton(
              icon:Icon(Icons.fastfood,
                color: Color(0xffFFB74D),
                size: 45.0,
              ),
              onPressed: ()
              {
                Navigator.pushNamed(context, SearchScreen.id);
              }
          ),
        ),
      ],
    );
  }
}
