import 'package:flutter/material.dart';

class StatusModel {
  String type;
  double amount;
  Color color;

  StatusModel(this.type, this.amount, this.color);

  static List<StatusModel> statusData() {
    List<Map<String, dynamic>> datas = [
      {"type": "Income", "amount": 80.7, "color": Colors.green},
      {"type": "Expense", "amount": 112.3, "color": Colors.red},
    ];
    return datas
        .map((data) => StatusModel(data["type"], data["amount"], data["color"]))
        .toList();
  }
}
