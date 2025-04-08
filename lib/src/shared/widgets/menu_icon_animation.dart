import 'package:f_banking/src/shared/components/custom_dot_menu.dart';
import 'package:flutter/material.dart';

Widget buildMenuIconAnimation(bool isClicked, VoidCallback onTap) {
  return GestureDetector(
    onTap: onTap,
    child: AnimatedContainer(
      margin: const EdgeInsets.all(15),
      alignment: Alignment.center,
      height: isClicked ? 25 : 20,
      width: 35,
      color: Colors.transparent,
      duration: Duration(milliseconds: 300),
      child: Stack(
        children: [
          AnimatedAlign(
            alignment: isClicked ? Alignment.bottomRight : Alignment.centerLeft,
            duration: Duration(milliseconds: 300),
            child: CustomDotMenu(),
          ),
          AnimatedAlign(
            alignment: isClicked ? Alignment.topCenter : Alignment.center,
            duration: Duration(milliseconds: 300),
            child: CustomDotMenu(),
          ),
          AnimatedAlign(
            alignment: isClicked ? Alignment.bottomLeft : Alignment.centerRight,
            duration: Duration(milliseconds: 300),
            child: CustomDotMenu(),
          ),
        ],
      ),
    ),
  );
}
