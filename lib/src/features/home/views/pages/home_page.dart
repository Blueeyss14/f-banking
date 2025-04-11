import 'package:f_banking/src/features/home/viewmodels/dashboard_provider.dart';
import 'package:f_banking/src/features/home/viewmodels/scroll_page_provider.dart';
import 'package:f_banking/src/features/home/viewmodels/sidebar_provider.dart';
import 'package:f_banking/src/features/home/views/components/dashboard.dart';
import 'package:f_banking/src/features/home/views/components/menu_icon_animation.dart';
import 'package:f_banking/src/routes/apps_routes.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final dashboardProvider = Provider.of<DashboardProvider>(context);
    final sidebar = Provider.of<SidebarProvider>(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: darkBlue,
      body: Stack(
        children: [
          Row(
            children: [
              buildDashboard(context),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.topCenter,

                  child: NotificationListener<ScrollNotification>(
                    onNotification: (scrollNotification) {
                      /// vertical axis only
                      if (scrollNotification is ScrollUpdateNotification &&
                          scrollNotification.scrollDelta != null &&
                          scrollNotification.scrollDelta!.abs() > 0 &&
                          scrollNotification.metrics.axis == Axis.vertical) {
                        final provider = Provider.of<ScrollPageProvider>(
                          context,
                          listen: false,
                        );

                        if (scrollNotification.metrics.pixels > 10) {
                          provider.setScrolled(true);
                        } else {
                          provider.setScrolled(false);
                        }
                      }
                      return true;
                    },
                    child: PageView(
                      scrollDirection: Axis.vertical,
                      // physics: NeverScrollableScrollPhysics(),
                      controller: sidebar.pageController,
                      children: pagesRoute,
                      onPageChanged: (index) {
                        setState(() {
                          sidebar.currentIndex = index;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          Consumer<ScrollPageProvider>(
            builder: (context, scrollPage, _) {
              return SafeArea(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AnimatedOpacity(
                          duration: Duration(milliseconds: 200),
                          opacity:
                              dashboardProvider.isClicked
                                  ? 1
                                  : scrollPage.isScrolled
                                  ? 0
                                  : 1,
                          child: buildMenuIconAnimation(context),
                        ),
                        AnimatedOpacity(
                          opacity: scrollPage.isScrolled ? 0 : 1,
                          duration: Duration(milliseconds: 200),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Image.asset(
                              "assets/img/QR.png",
                              width: 30,
                              height: 30,
                              color: white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
