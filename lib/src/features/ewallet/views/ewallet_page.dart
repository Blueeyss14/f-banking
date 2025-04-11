import 'package:auto_size_text/auto_size_text.dart';
import 'package:f_banking/src/features/ewallet/models/ewallet_model.dart';
import 'package:f_banking/src/features/transfer/viewmodels/transfer_provider.dart';
import 'package:f_banking/src/shared/components/activity.dart';
import 'package:f_banking/src/shared/components/item.dart';
import 'package:f_banking/src/shared/components/item_textfield.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EwalletPage extends StatelessWidget {
  const EwalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    final transfers = Provider.of<TransferProvider>(context).items;
    List<EwalletModel> ewalletModel = EwalletModel.imageData();
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
        child: SingleChildScrollView(
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
                title: "Search E-Wallet",
                labelText: "Search",
                borderRadius: BorderRadius.circular(0),
                image: Item(
                  padding: const EdgeInsets.all(10),
                  child: Image.asset(
                    "assets/img/ewallet.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                children: List.generate(
                  ewalletModel.length,
                  (index) => Item(
                    color: darkBlue2,
                    margin: const EdgeInsets.only(bottom: 5),

                    // gradientColor: LinearGradient(
                    //   colors: [
                    //     const Color(0xFF2A3D55).withAlpha(50),
                    //     darkBlue2,
                    //   ],
                    //   begin: Alignment.bottomLeft,
                    //   end: Alignment.topRight,
                    // ),
                    child: Row(
                      children: [
                        Image.asset(
                          ewalletModel[index].image,
                          width: 60,
                          height: 60,
                        ),
                        const SizedBox(width: 5),
                        AutoSizeText(
                          ewalletModel[index].title,
                          maxLines: 1,
                          style: TextStyle(color: white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
