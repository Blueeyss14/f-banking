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
                  child: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      clipBehavior: Clip.antiAlias,
                      margin: const EdgeInsets.only(top: 130),
                      decoration: BoxDecoration(
                        color: darkBlue2,
                        borderRadius: BorderRadius.circular(10),
                        border: Border(
                          top: BorderSide(
                            width: 0.5,
                            color: Colors.grey.withAlpha(120),
                          ),
                          right: BorderSide(
                            width: 0.5,
                            color: Colors.grey.withAlpha(120),
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                AutoSizeText(
                                  maxLines: 1,
                                  "128.4\$",
                                  style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Icon(
                                  Icons.visibility,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Divider(thickness: 0.3, height: 0),
                          ),
                          const SizedBox(height: 10),

                          ///ITEM
                          AnimatedContainer(
                            padding: EdgeInsets.symmetric(
                              vertical: dashboardProvider.isClicked ? 15 : 20,
                            ),
                            alignment: Alignment.center,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: darkBlue,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 0.5,
                                color: const Color(0xFF1C1E27).withAlpha(80),
                              ),
                            ),
                            duration: Duration(milliseconds: 200),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: List.generate(
                                    4,
                                    (index) => Column(
                                      children: [
                                        AnimatedContainer(
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.all(10),
                                          clipBehavior: Clip.antiAlias,
                                          width: dashboardProvider.itemSize,
                                          height: dashboardProvider.itemSize,
                                          decoration: BoxDecoration(
                                            color: darkBlue3,
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                            border: Border(
                                              top: BorderSide(
                                                width: 0.5,
                                                color: Colors.grey.withAlpha(
                                                  120,
                                                ),
                                              ),
                                              right: BorderSide(
                                                width: 0.5,
                                                color: Colors.grey.withAlpha(
                                                  120,
                                                ),
                                              ),
                                            ),
                                          ),
                                          duration: Duration(milliseconds: 200),
                                          child: Image.asset(
                                            itemModel[index].image,
                                          ),
                                        ),
                                        const SizedBox(height: 5),
                                        AutoSizeText(
                                          itemModel[index].title,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
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
