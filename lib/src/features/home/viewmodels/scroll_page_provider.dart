import 'package:flutter/material.dart';

class ScrollPageProvider with ChangeNotifier {
  bool _isScrolled = false;

  bool get isScrolled => _isScrolled;

  void setScrolled(bool value) {
    if (_isScrolled != value) {
      _isScrolled = value;
      notifyListeners();
    }
  }
}
