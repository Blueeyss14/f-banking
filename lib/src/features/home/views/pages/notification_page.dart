import 'package:auto_size_text/auto_size_text.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AutoSizeText(
        "No Notification",
        maxLines: 1,
        style: TextStyle(color: white),
      ),
    );
  }
}
