import 'package:flutter/material.dart';

class BottomIcons extends StatelessWidget {
  final IconData bottomIcon;
  final Color iconColor;
  final Color dotColor;
  final Function onPress;

  BottomIcons({this.bottomIcon, this.iconColor, this.dotColor, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Icon(
        bottomIcon,
        color: iconColor,
        size: 35.0,
      ),
    );
  }
}
