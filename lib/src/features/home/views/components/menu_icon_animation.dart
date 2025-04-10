import 'package:f_banking/src/features/home/viewmodels/dashboard_provider.dart';
import 'package:f_banking/src/features/home/viewmodels/scroll_page_provider.dart';
import 'package:f_banking/src/shared/components/custom_dot_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget buildMenuIconAnimation(BuildContext context) {
  final dashboardProvider = Provider.of<DashboardProvider>(context);
  final scrollPage = Provider.of<ScrollPageProvider>(context);

  void unTap() {
    return;
  }

  return GestureDetector(
    onTap:
        dashboardProvider.isClicked
            ? dashboardProvider.checkClick
            : scrollPage.isScrolled
            ? unTap
            : dashboardProvider.checkClick,
    child: AnimatedContainer(
      margin: const EdgeInsets.all(15),
      alignment: Alignment.center,
      height: dashboardProvider.isClicked ? 25 : 20,
      width: 35,
      color: Colors.transparent,
      duration: Duration(milliseconds: 300),
      child: Stack(
        children: [
          AnimatedAlign(
            alignment:
                dashboardProvider.isClicked
                    ? Alignment.bottomRight
                    : Alignment.centerLeft,
            duration: Duration(milliseconds: 300),
            child: CustomDotMenu(),
          ),
          AnimatedAlign(
            alignment:
                dashboardProvider.isClicked
                    ? Alignment.topCenter
                    : Alignment.center,
            duration: Duration(milliseconds: 300),
            child: CustomDotMenu(),
          ),
          AnimatedAlign(
            alignment:
                dashboardProvider.isClicked
                    ? Alignment.bottomLeft
                    : Alignment.centerRight,
            duration: Duration(milliseconds: 300),
            child: CustomDotMenu(),
          ),
        ],
      ),
    ),
  );
}
