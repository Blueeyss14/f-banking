import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';

Widget buildDashboard(BuildContext context, bool isClicked) {
  double borderSize = 0.5;
  return AnimatedContainer(
    width:
        isClicked ? MediaQuery.of(context).size.width / 8 + 15 + borderSize : 0,
    height: double.infinity,
    duration: Duration(milliseconds: 200),
    decoration: BoxDecoration(
      color: darkBlue2,
      border: Border(
        right: BorderSide(width: borderSize, color: Colors.grey.withAlpha(120)),
      ),
    ),
  );
}
