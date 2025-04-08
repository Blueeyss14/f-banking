import 'package:f_banking/src/shared/widgets/menu_icon_animation.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

bool isClicked = false;

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
                  duration: Duration(milliseconds: 300),
                ),
                Flexible(child: Container(color: Colors.green)),
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
