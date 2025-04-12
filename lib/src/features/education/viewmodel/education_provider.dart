import 'package:f_banking/src/features/education/model/education_model.dart';
import 'package:flutter/material.dart';

class EducationProvider with ChangeNotifier {
  final List<EducationModel> _items = EducationModel.itemData();

  List<EducationModel> get items => _items;

  void addTransfer(EducationModel data) {
    _items.add(data);
    notifyListeners();
  }
}
