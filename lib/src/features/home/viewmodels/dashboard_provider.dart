import 'package:flutter/material.dart';

class DashboardProvider extends ChangeNotifier {
  bool isClicked = false;
  double itemSize = 55;

  void checkClick() {
    isClicked = !isClicked;

    if (isClicked) {
      itemSize = 50;
    } else {
      itemSize = 55;
    }
    notifyListeners();
  }
}
