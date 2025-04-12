import 'package:f_banking/src/features/home/models/payment_activity_model.dart';
import 'package:f_banking/src/features/home/views/widgets/income_expense.dart';
import 'package:f_banking/src/shared/components/item.dart';
import 'package:f_banking/src/shared/components/item_textfield.dart';
import 'package:f_banking/src/shared/components/line_chart.dart';
import 'package:f_banking/src/shared/components/transaction_activity.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<PaymentActivityModel> paymentData =
        PaymentActivityModel.activityData();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 120),
            Text(
              "History",
              style: TextStyle(
                color: white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Item(
              margin: const EdgeInsets.symmetric(vertical: 15),
              gradientColor: LinearGradient(
                colors: [const Color(0xFF2A3D55).withAlpha(50), darkBlue2],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              padding: const EdgeInsets.all(10),
              child: LineChartSample2(),
            ),
            buildIncomeExpense(context),
            const SizedBox(height: 15),
            ItemTextfield(
              keyboardType: TextInputType.text,
              gradientColor: LinearGradient(
                colors: [const Color(0xFF2A3D55).withAlpha(50), darkBlue2],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
              title: "Payment History",
              labelText: "Search",
              image: Icon(Icons.history, color: white, size: 35),
            ),

            const SizedBox(height: 15),
            Text(
              "Payment Activity",
              style: TextStyle(
                color: white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            TransactionActivity(
              margin: const EdgeInsets.only(bottom: 5),
              width: MediaQuery.of(context).size.width - 100,

              itemCount: paymentData.length,
              images: paymentData.map((e) => Image.asset(e.image)).toList(),
              titles:
                  paymentData.map((e) => "${e.ewallet} - ${e.amount}").toList(),
              subTitles:
                  paymentData.map((e) => "${e.name} - ${e.number}").toList(),
            ),
            Container(height: MediaQuery.of(context).size.height / 2),
          ],
        ),
      ),
    );
  }
}
