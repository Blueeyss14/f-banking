import 'package:auto_size_text/auto_size_text.dart';
import 'package:f_banking/src/features/education/model/education_model.dart';
import 'package:f_banking/src/features/education/viewmodel/education_provider.dart';
import 'package:f_banking/src/features/ewallet/models/ewallet_model.dart';
import 'package:f_banking/src/shared/components/activity.dart';
import 'package:f_banking/src/shared/components/item.dart';
import 'package:f_banking/src/shared/components/item_textfield.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final ewallet = Provider.of<EducationProvider>(context).items;
    // List<EwalletModel> ewalletModel = EwalletModel.imageData();
    List<EducationModel> education = EducationModel.itemData();
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
              // Text(
              //   "Payment Activity",
              //   style: TextStyle(
              //     color: white,
              //     fontSize: 25,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              // const SizedBox(height: 10),

              // Activity(
              //   itemCount: ewalletData.length,
              //   titles: ewallet.map((e) => e.university).toList(),
              //   subTitles: ewalletData.map((e) => e.university).toList(),
              //   images:
              //       ewalletData
              //           .map((e) => Image.asset(e.image, fit: BoxFit.cover))
              //           .toList(),
              // ),
              // const SizedBox(height: 10),
              ItemTextfield(
                gradientColor: LinearGradient(
                  colors: [const Color(0xFF2A3D55).withAlpha(50), darkBlue2],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
                title: "Search University",
                labelText: "Search",
                borderRadius: BorderRadius.circular(0),
                keyboardType: TextInputType.text,
                image: Container(
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    "assets/img/education.png",
                    fit: BoxFit.cover,
                    color: white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  education.length,
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
                            education[index].image,
                            width: 40,
                            height: 40,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: AutoSizeText(
                            education[index].university,
                            maxLines: 2,
                            style: TextStyle(color: white, fontSize: 18),
                            overflow: TextOverflow.ellipsis,
                          ),
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
