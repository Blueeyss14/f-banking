import 'package:f_banking/src/shared/components/activity.dart';
import 'package:f_banking/src/shared/components/transaction_activity.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 100),
          Text(
            "Payment Activity",
            style: TextStyle(
              color: white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          TransactionActivity(
            itemCount: 10,
            titles: ["sgsg", "sgsg", "sgsg", "sgsg"],
          ),
          Container(
            color: Colors.amber,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
        ],
      ),
    );
  }
}
