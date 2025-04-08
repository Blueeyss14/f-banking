import 'package:f_banking/src/shared/menu_icon_animation.dart';
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
        child: Column(
          children: [
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                setState(() {
                  isClicked = !isClicked;
                });
              },
              child: buildMenuIconAnimation(isClicked),
            ),
          ],
        ),
      ),
    );
  }
}
