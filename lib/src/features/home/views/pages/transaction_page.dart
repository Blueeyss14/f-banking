import 'package:f_banking/src/shared/components/transaction_activity.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 120),
            Text(
              "Payment Activity",
              style: TextStyle(
                color: white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            TransactionActivity(
              margin: const EdgeInsets.only(bottom: 5),
              width: MediaQuery.of(context).size.width - 100,
              itemCount: 10,
              titles: ["sdgfsdfsd", "sdfsdfsdfsdf"],
              subTitles: [
                "sdfsdfhsufhsdkjh shdfk sjhdfshdfjk jshfjsdfhkjhkjh",
                "sdfsdfsfs",
                "dsfsdgsdgs",
              ],
            ),
            Container(height: MediaQuery.of(context).size.width),
          ],
        ),
      ),
    );
  }
}
