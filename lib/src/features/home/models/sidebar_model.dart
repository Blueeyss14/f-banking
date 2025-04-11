import 'package:flutter/material.dart';

class SidebarModel {
  IconData icon;
  String title;

  SidebarModel(this.icon, this.title);

  static List<SidebarModel> sidebarData() {
    List<Map<String, dynamic>> datas = [
      {"icon": Icons.home, "title": "Home"},
      {"icon": Icons.history, "title": "Transaction"},
      {"icon": Icons.notifications_rounded, "title": "Notification"},
    ];

    return datas
        .map((data) => SidebarModel(data["icon"], data["title"]))
        .toList();
  }
}
