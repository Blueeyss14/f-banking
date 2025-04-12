import 'package:f_banking/src/features/ewallet/models/ewallet_model.dart';
import 'package:flutter/material.dart';

class SearchEwalletProvider extends ChangeNotifier {
  List<EwalletModel> ewallet = EwalletModel.imageData();
  TextEditingController searchController = TextEditingController();

  List<EwalletModel> filtereditems = [];

  SearchEwalletProvider() {
    init();
  }

  void init() {
    filtereditems = ewallet;
  }

  void searchItem(String query) {
    List<EwalletModel> tempItems =
        ewallet
            .where(
              (item) => item.title.toLowerCase().contains(query.toLowerCase()),
            )
            .toList();

    filtereditems = tempItems;
    notifyListeners();
  }
}
