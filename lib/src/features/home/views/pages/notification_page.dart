import 'package:f_banking/src/features/home/models/notification_data_model.dart';
import 'package:f_banking/src/shared/components/transaction_activity.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<NotificationDataModel> notification =
        NotificationDataModel.notificationData();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 120),
            Text(
              "Notifications",
              style: TextStyle(
                color: white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),
            TransactionActivity(
              images:
                  notification
                      .map((e) => Image.asset(e.image, fit: BoxFit.cover))
                      .toList(),
              titles: notification.map((e) => e.ewallet).toList(),
              subTitles: notification.map((e) => e.description).toList(),
              margin: const EdgeInsets.only(bottom: 5),
              width: MediaQuery.of(context).size.width - 100,
              itemCount: notification.length,
            ),

            Container(height: MediaQuery.of(context).size.height),
          ],
        ),
      ),
    );
  }
}
