import 'package:flutter/material.dart';

class DashboardProvider extends ChangeNotifier {
  bool isClicked = false;
  double itemSize = 55;

  bool showMore = false;
  bool isVisible = false;

  void checkClick() {
    isClicked = !isClicked;

    if (isClicked) {
      itemSize = 50;
    } else {
      itemSize = 55;
    }
    notifyListeners();
  }

  void itemClicked() {
    showMore = !showMore;
    notifyListeners();
  }

  void itemVisible() {
    isVisible = !isVisible;
    notifyListeners();
  }
}
