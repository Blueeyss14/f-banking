import 'package:auto_size_text/auto_size_text.dart';
import 'package:f_banking/src/features/home/models/sidebar_model.dart';
import 'package:f_banking/src/features/home/viewmodels/dashboard_provider.dart';
import 'package:f_banking/src/features/home/viewmodels/sidebar_provider.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Widget buildDashboard(BuildContext context) {
  final dashboardProvider = Provider.of<DashboardProvider>(context);
  final sidebarProvider = Provider.of<SidebarProvider>(context);
  List<SidebarModel> sidebar = SidebarModel.sidebarData();
  double borderSize = 0.5;
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
            height: MediaQuery.of(context).size.width / 2 + 50,
            decoration: BoxDecoration(
              color:
                  dashboardProvider.isClicked ? darkBlue2 : Colors.transparent,

              borderRadius: BorderRadius.horizontal(right: Radius.circular(10)),
            ),

            child: Column(
              children: List.generate(
                sidebar.length,
                (index) => Expanded(
                  child: GestureDetector(
                    onTap: () => sidebarProvider.pageIndex(index),
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      alignment: Alignment.center,
                      width: double.infinity,
                      color:
                          sidebarProvider.currentIndex == index
                              ? darkBlue3
                              : Colors.transparent,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(sidebar[index].icon, color: white),
                          AutoSizeText(
                            sidebar[index].title,
                            maxLines: 1,
                            minFontSize: 0,
                            style: TextStyle(color: white, fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
