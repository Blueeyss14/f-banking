import 'package:f_banking/src/features/transfer/viewmodels/transfer_provider.dart';
import 'package:f_banking/src/shared/components/activity.dart';
import 'package:f_banking/src/shared/components/item.dart';
import 'package:f_banking/src/shared/components/item_textfield.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    final transfers = Provider.of<TransferProvider>(context).items;
    return Scaffold(
      resizeToAvoidBottomInset: false,

      backgroundColor: darkBlue,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        foregroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Activity(
                    itemCount: transfers.length,
                    titles: transfers.map((e) => e.number).toList(),
                    subTitles: transfers.map((e) => e.name).toList(),
                    images:
                        transfers
                            .map((e) => Image.asset(e.image, fit: BoxFit.cover))
                            .toList(),
                  ),

                  const SizedBox(height: 10),
                  ItemTextfield(
                    title: "Enter Account Number",
                    labelText: "Account Number",
                    image: Image.asset(
                      "assets/img/fbanking.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Item(
                  borderRadius: BorderRadius.circular(10),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    "Continue",
                    style: TextStyle(color: white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
