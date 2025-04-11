import 'package:f_banking/src/features/transfer/models/transfer_model.dart';
import 'package:flutter/material.dart';

class TransferProvider with ChangeNotifier {
  final List<TransferModel> _items = TransferModel.itemData();

  List<TransferModel> get items => _items;

  void addTransfer(TransferModel data) {
    _items.add(data);
    notifyListeners();
  }
}
