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
