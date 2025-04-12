import 'package:f_banking/src/features/ewallet/models/ewallet_data_model.dart';
import 'package:flutter/material.dart';

class EwalletDataProvider with ChangeNotifier {
  final List<EwalletDataModel> _items = EwalletDataModel.ewalletData();

  List<EwalletDataModel> get items => _items;

  void addTransfer(EwalletDataModel data) {
    _items.add(data);
    notifyListeners();
  }
}
