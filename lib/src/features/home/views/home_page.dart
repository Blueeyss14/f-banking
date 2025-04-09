import 'package:auto_size_text/auto_size_text.dart';
import 'package:f_banking/src/features/home/models/item_model.dart';
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

    List<ItemModel> itemModel = ItemModel.itemData();

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
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    // clipBehavior: Clip.antiAlias,
                    margin: const EdgeInsets.only(top: 130),
                    decoration: BoxDecoration(
                      color: darkBlue2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // const SizedBox(height: 130),
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
                          // const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: AutoSizeText(
                              "128.4\$",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            alignment: Alignment.center,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: darkBlue,
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
                                      padding: const EdgeInsets.all(10),
                                      clipBehavior: Clip.antiAlias,
                                      width: dashboardProvider.itemSize,
                                      height: dashboardProvider.itemSize,
                                      decoration: BoxDecoration(
                                        color: darkBlue2,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      duration: Duration(milliseconds: 200),
                                      child: Image.asset(
                                        itemModel[index].image,
                                      ),
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
