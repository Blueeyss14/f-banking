import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';

class StatusModel {
  String type;
  double amount;
  Color color;
  IconData icon;

  StatusModel(this.type, this.amount, this.color, this.icon);

  static List<StatusModel> statusData() {
    List<Map<String, dynamic>> datas = [
      {
        "type": "Income",
        "amount": 80.7,
        "color": blue,
        "icon": Icons.arrow_upward_rounded,
      },
      {
        "type": "Expense",
        "amount": 112.3,
        "color": purple,
        "icon": Icons.arrow_downward_rounded,
      },
    ];
    return datas
        .map(
          (data) => StatusModel(
            data["type"],
            data["amount"],
            data["color"],
            data["icon"],
          ),
        )
        .toList();
  }
}
