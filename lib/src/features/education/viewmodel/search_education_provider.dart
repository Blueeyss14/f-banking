import 'package:f_banking/src/features/education/model/education_model.dart';
import 'package:flutter/material.dart';

class SearchEducationProvider extends ChangeNotifier {
  List<EducationModel> education = EducationModel.itemData();
  TextEditingController searchController = TextEditingController();

  List<EducationModel> filtereditems = [];

  SearchEducationProvider() {
    init();
  }

  void init() {
    filtereditems = education;
  }

  void searchItem(String query) {
    List<EducationModel> tempItems =
        education
            .where(
              (item) =>
                  item.university.toLowerCase().contains(query.toLowerCase()),
            )
            .toList();

    filtereditems = tempItems;
    notifyListeners();
  }
}
