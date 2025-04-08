import 'package:f_banking/src/shared/widgets/dashboard.dart';
import 'package:f_banking/src/shared/widgets/menu_icon_animation.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool isClicked = false;
bool showMore = false;
FlipCardController flipCardController = FlipCardController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      body: Stack(
        children: [
          Row(
            children: [
              buildDashboard(context, isClicked),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
                                    MainAxisAlignment.spaceAround,
                                children: List.generate(
                                  4,
                                  (index) => Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showMore = !showMore;
                                  });
                                },
                                child: ExpansionTile(
                                  shape: Border.fromBorderSide(BorderSide.none),
                                  collapsedShape: Border.fromBorderSide(
                                    BorderSide.none,
                                  ),
                                  title:
                                      showMore
                                          ? Text("Show Less")
                                          : Text("Show More"),
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: List.generate(
                                        4,
                                        (index) => Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
                buildMenuIconAnimation(isClicked, () {
                  setState(() {
                    isClicked = !isClicked;
                  });
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
