import 'package:auto_size_text/auto_size_text.dart';
import 'package:f_banking/src/features/ewallet/models/ewallet_data_model.dart';
import 'package:f_banking/src/features/ewallet/models/ewallet_model.dart';
import 'package:f_banking/src/features/ewallet/viewmodels/ewallet_data_provider.dart';
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
    final ewallet = Provider.of<EwalletDataProvider>(context).items;
    List<EwalletModel> ewalletModel = EwalletModel.imageData();
    List<EwalletDataModel> ewalletData = EwalletDataModel.itemData();
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
                itemCount: ewalletData.length,
                titles: ewallet.map((e) => e.name).toList(),
                subTitles: ewalletData.map((e) => e.ewallet).toList(),
                images:
                    ewalletData
                        .map((e) => Image.asset(e.image, fit: BoxFit.cover))
                        .toList(),
              ),

              const SizedBox(height: 10),
              ItemTextfield(
                title: "Search E-Wallet",
                labelText: "Search",
                borderRadius: BorderRadius.circular(0),
                keyboardType: TextInputType.text,
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
                    padding: const EdgeInsets.symmetric(horizontal: 5),

                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            ewalletModel[index].image,
                            width: 40,
                            height: 40,
                          ),
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
