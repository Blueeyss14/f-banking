import 'package:f_banking/src/features/home/viewmodels/dashboard_provider.dart';
import 'package:f_banking/src/shared/widgets/dashboard.dart';
import 'package:f_banking/src/shared/widgets/menu_icon_animation.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dashboardProvider = Provider.of<DashboardProvider>(context);
    bool showMore = false;
    FlipCardController flipCardController = FlipCardController();

    return Scaffold(
      backgroundColor: darkBlue,
      body: Stack(
        children: [
          Row(
            children: [
              buildDashboard(context),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.topCenter,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 130),
                        FlipCard(
                          animationDuration: Duration(milliseconds: 400),
                          onTapFlipping: true,
                          frontWidget: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            color: Colors.green,
                            child: Text("data"),
                          ),
                          backWidget: Container(
                            color: Colors.amber,
                            width: double.infinity,
                            height: 200,
                          ),
                          controller: flipCardController,
                          rotateSide: RotateSide.bottom,
                        ),
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          alignment: Alignment.center,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: List.generate(
                                  4,
                                  (index) => AnimatedContainer(
                                    width: dashboardProvider.itemSize,
                                    height: dashboardProvider.itemSize,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    duration: Duration(milliseconds: 200),
                                    child: Icon(Icons.swap_horizontal_circle),
                                  ),
                                ),
                              ),
                              // ExpansionTile(
                              //   collapsedIconColor: Colors.transparent,
                              //   backgroundColor: Colors.transparent,
                              //   onExpansionChanged: (value) {
                              //     setState(() {
                              //       showMore = !showMore;
                              //     });
                              //   },
                              //   shape: Border.fromBorderSide(BorderSide.none),
                              //   collapsedShape: Border.fromBorderSide(
                              //     BorderSide.none,
                              //   ),
                              //   title:
                              //       showMore
                              //           ? Text("Show more")
                              //           : Text("Show Less"),
                              //   children: [
                              //     Row(
                              //       mainAxisAlignment:
                              //           MainAxisAlignment.spaceAround,
                              //       children: List.generate(
                              //         4,
                              //         (index) => Container(
                              //           width: 40,
                              //           height: 40,
                              //           decoration: BoxDecoration(
                              //             color: Colors.green,
                              //             borderRadius: BorderRadius.circular(
                              //               5,
                              //             ),
                              //           ),
                              //         ),
                              //       ),
                              //     ),
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),
                buildMenuIconAnimation(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
