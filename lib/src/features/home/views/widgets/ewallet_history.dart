import 'package:auto_size_text/auto_size_text.dart';
import 'package:f_banking/src/shared/components/item.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';

Widget buildPaymentActivity() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: List.generate(
        10,
        (index) => Item(
          gradientColor: LinearGradient(
            colors: [const Color(0xFF2A3D55).withAlpha(50), darkBlue2],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          margin: const EdgeInsets.only(right: 10),
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              AutoSizeText(
                "Ayam Mas Romo",
                style: TextStyle(
                  color: white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                maxLines: 1,
              ),
              AutoSizeText("ShopeePay", style: TextStyle(color: white)),
            ],
          ),
        ),
      ),
    ),
  );
}
