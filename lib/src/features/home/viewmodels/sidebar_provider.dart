import 'package:f_banking/src/features/home/models/sidebar_model.dart';
import 'package:flutter/material.dart';

class SidebarProvider extends ChangeNotifier {
  int currentIndex = 0;
  PageController pageController = PageController();
  List<SidebarModel> siderbar = SidebarModel.sidebarData();

  void pageIndex(int index) {
    currentIndex = index;
    pageController.animateToPage(
      currentIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    notifyListeners();
  }

  @override
  void dispose() {
    pageController.dispose;
    super.dispose();
  }
}
