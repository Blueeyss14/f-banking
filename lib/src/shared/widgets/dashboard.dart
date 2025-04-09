import 'package:auto_size_text/auto_size_text.dart';
import 'package:f_banking/src/features/home/viewmodels/dashboard_provider.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget buildDashboard(BuildContext context) {
  final dashboardProvider = Provider.of<DashboardProvider>(context);
  double borderSize = 0.5;
  List<Color> colors = [Colors.red, Colors.blue, Colors.green];
  return AnimatedContainer(
    curve: Curves.easeInOut,
    width:
        dashboardProvider.isClicked
            ? MediaQuery.of(context).size.width / 8 + 15 + borderSize
            : 0,
    height: double.infinity,
    duration: Duration(milliseconds: 200),
    decoration: BoxDecoration(
      color: darkBlue2,
      border: Border(
        right: BorderSide(width: borderSize, color: Colors.grey.withAlpha(120)),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Container(
            clipBehavior: Clip.antiAlias,
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
              color:
                  dashboardProvider.isClicked
                      ? Colors.amber
                      : Colors.transparent,

              borderRadius: BorderRadius.horizontal(right: Radius.circular(10)),
            ),

            child: Column(
              children: List.generate(
                3,
                (index) => Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    width: double.infinity,
                    color: colors[index],
                    child: AutoSizeText("data", maxLines: 1),
                  ),
                ),
              ),
            ),

            // AutoSizeText(
            //   "data",
            //   style: TextStyle(fontSize: isClicked ? 24 : 0),
            //   maxFontSize: 24,
            //   maxLines: 1,
            // ),
          ),
        ),
      ],
    ),
  );
}
