import 'package:f_banking/src/features/education/model/education_data_model.dart';
import 'package:flutter/material.dart';

class EducationDataProvider with ChangeNotifier {
  final List<EducationDataModel> _items = EducationDataModel.eduData();

  List<EducationDataModel> get items => _items;

  void addTransfer(EducationDataModel data) {
    _items.add(data);
    notifyListeners();
  }
}
