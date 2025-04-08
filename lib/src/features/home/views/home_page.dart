import 'package:f_banking/src/shared/widgets/menu_icon_animation.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flipcard/flip_card.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:flutter_flip_card/modal/flip_side.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool isClicked = false;
FlipCardController flipCardController = FlipCardController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                AnimatedContainer(
                  color: Colors.amber,
                  width:
                      isClicked
                          ? MediaQuery.of(context).size.width / 8 + 16
                          : 0,
                  height: double.infinity,
                  duration: Duration(milliseconds: 200),
                ),
                Flexible(
                  child: Container(
                    alignment: Alignment.center,
                    // width: double.infinity,
                    // height: double.infinity,
                    child: Column(
                      children: [
                        FlipCard(
                          frontWidget: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            color: Colors.green,
                            child: Text("data"),
                          ),
                          backWidget: Container(),
                          controller: flipCardController,
                          rotateSide: RotateSide.bottom,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(height: 30),
                buildMenuIconAnimation(isClicked, () {
                  setState(() {
                    isClicked = !isClicked;
                  });
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
