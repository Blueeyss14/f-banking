import 'package:auto_size_text/auto_size_text.dart';
import 'package:f_banking/src/features/ewallet/models/ewallet_data_model.dart';
import 'package:f_banking/src/features/ewallet/viewmodels/ewallet_data_provider.dart';
import 'package:f_banking/src/features/ewallet/viewmodels/search_ewallet_provider.dart';
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
    List<EwalletDataModel> ewalletData = EwalletDataModel.ewalletData();

    final ewalletProvider = Provider.of<SearchEwalletProvider>(context);

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Payment Activity",
                style: TextStyle(
                  color: white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
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
                controller: ewalletProvider.searchController,
                onChanged: ewalletProvider.searchItem,
                gradientColor: LinearGradient(
                  colors: [const Color(0xFF2A3D55).withAlpha(50), darkBlue2],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
                title: "Search E-Wallet",
                labelText: "Search",
                borderRadius: BorderRadius.circular(0),
                keyboardType: TextInputType.text,
                image: Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    "assets/img/ewallet.png",
                    fit: BoxFit.cover,
                    color: white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  ewalletProvider.filtereditems.length,
                  (index) => Item(
                    gradientColor: LinearGradient(
                      colors: [
                        const Color(0xFF2A3D55).withAlpha(50),
                        darkBlue2,
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                    ),
                    width: MediaQuery.of(context).size.width - 150,

                    color: darkBlue2,
                    margin: const EdgeInsets.only(bottom: 5),
                    padding: const EdgeInsets.symmetric(horizontal: 5),

                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            ewalletProvider.filtereditems[index].image,
                            width: 40,
                            height: 40,
                          ),
                        ),
                        const SizedBox(width: 5),
                        AutoSizeText(
                          ewalletProvider.filtereditems[index].title,
                          maxLines: 2,
                          style: TextStyle(color: white, fontSize: 18),
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
