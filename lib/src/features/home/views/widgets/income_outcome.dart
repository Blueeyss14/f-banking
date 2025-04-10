import 'package:f_banking/src/shared/components/item.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';

Widget buildIncomeOutcome() {
  final List<Widget> items = [];

  for (int i = 0; i < 2; i++) {
    if (i > 0) {
      items.add(const SizedBox(width: 10));
    }
    items.add(
      Flexible(
        child: Item(
          color: darkBlue2,
          height: 150,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_upward_rounded),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  return Row(children: items);
}
