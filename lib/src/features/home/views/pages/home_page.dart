import 'package:auto_size_text/auto_size_text.dart';
import 'package:f_banking/src/features/home/models/item_model.dart';
import 'package:f_banking/src/features/home/viewmodels/dashboard_provider.dart';
import 'package:f_banking/src/features/home/views/widgets/ewallet_history.dart';
import 'package:f_banking/src/features/home/views/widgets/income_outcome.dart';
import 'package:f_banking/src/features/transfer/views/transfer_page.dart';
import 'package:f_banking/src/shared/components/custom_dot_menu.dart';
import 'package:f_banking/src/features/home/views/components/dashboard.dart';
import 'package:f_banking/src/shared/components/item.dart';
import 'package:f_banking/src/features/home/views/components/menu_icon_animation.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dashboardProvider = Provider.of<DashboardProvider>(context);
    FlipCardController flipCardController = FlipCardController();

    List<ItemModel> itemModel = ItemModel.itemData();
    return Scaffold(
      backgroundColor: darkBlue,
      body: Stack(
        children: [
          Row(
            children: [
              buildDashboard(context),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.topCenter,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          clipBehavior: Clip.antiAlias,
                          margin: const EdgeInsets.only(top: 130),
                          decoration: BoxDecoration(
                            color: darkBlue2,
                            borderRadius: BorderRadius.circular(10),
                            border: Border(
                              top: BorderSide(
                                width: 0.5,
                                color: Colors.grey.withAlpha(120),
                              ),
                              right: BorderSide(
                                width: 0.5,
                                color: Colors.grey.withAlpha(120),
                              ),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FlipCard(
                                animationDuration: Duration(milliseconds: 400),
                                onTapFlipping: true,
                                frontWidget: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 200,
                                  color: Colors.green,
                                  child: Text("data"),
                                ),
                                backWidget: Container(
                                  color: Colors.amber,
                                  width: double.infinity,
                                  height: 200,
                                ),
                                controller: flipCardController,
                                rotateSide: RotateSide.bottom,
                              ),

                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                height: 60,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        if (dashboardProvider.isVisible)
                                          AutoSizeText(
                                            maxLines: 1,
                                            "128.4\$",
                                            style: TextStyle(
                                              fontSize: 28,
                                              color: Colors.white,
                                            ),
                                          )
                                        else
                                          Row(
                                            children: [
                                              for (int i = 0; i < 5; i++)
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        horizontal: 2,
                                                      ),
                                                  child: CustomDotMenu(),
                                                ),
                                            ],
                                          ),

                                        const SizedBox(width: 15),
                                        GestureDetector(
                                          onTap: dashboardProvider.itemVisible,
                                          child:
                                              dashboardProvider.isVisible
                                                  ? Icon(
                                                    Icons.visibility,
                                                    color: Colors.white,
                                                    size: 20,
                                                  )
                                                  : Icon(
                                                    Icons.visibility_off,
                                                    color: Colors.white,
                                                    size: 20,
                                                  ),
                                        ),
                                      ],
                                    ),
                                    AutoSizeText(
                                      maxLines: 1,
                                      "Balance",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Divider(thickness: 0.3, height: 0),
                              ),
                              const SizedBox(height: 10),

                              ///ITEM
                              Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: darkBlue,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border(
                                    top: BorderSide(
                                      width: 0.2,
                                      color: Colors.grey.withAlpha(80),
                                    ),
                                    right: BorderSide(
                                      width: 0.5,
                                      color: Colors.grey.withAlpha(80),
                                    ),
                                  ),
                                ),
                                child: AnimatedContainer(
                                  padding: EdgeInsets.symmetric(
                                    vertical:
                                        dashboardProvider.isClicked ? 15 : 20,
                                  ),
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: darkBlue,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      width: 0.5,
                                      color: const Color(
                                        0xFF1C1E27,
                                      ).withAlpha(50),
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 200),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: List.generate(
                                          4,
                                          (index) => Column(
                                            children: [
                                              Item(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder:
                                                          (context) =>
                                                              TransferPage(),
                                                    ),
                                                  );
                                                },
                                                padding: const EdgeInsets.all(
                                                  12,
                                                ),
                                                width:
                                                    dashboardProvider.itemSize,
                                                height:
                                                    dashboardProvider.itemSize,
                                                child: Image.asset(
                                                  itemModel[index].image,
                                                ),
                                              ),

                                              const SizedBox(height: 5),
                                              AutoSizeText(
                                                itemModel[index].title,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      AnimatedContainer(
                                        height:
                                            dashboardProvider.isClicked
                                                ? 8
                                                : 15,
                                        duration: Duration(milliseconds: 200),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: List.generate(
                                          4,
                                          (index) => Column(
                                            children: [
                                              Item(
                                                padding: const EdgeInsets.all(
                                                  10,
                                                ),
                                                width:
                                                    !dashboardProvider.showMore
                                                        ? 0
                                                        : dashboardProvider
                                                            .itemSize,
                                                height:
                                                    !dashboardProvider.showMore
                                                        ? 0
                                                        : dashboardProvider
                                                            .itemSize,
                                                child: Image.asset(
                                                  itemModel[index + 4].image,
                                                ),
                                              ),
                                              const SizedBox(height: 5),
                                              SizedBox(
                                                height:
                                                    !dashboardProvider.showMore
                                                        ? 0
                                                        : null,
                                                width:
                                                    !dashboardProvider.showMore
                                                        ? 0
                                                        : null,
                                                child: AutoSizeText(
                                                  maxLines: 1,
                                                  itemModel[index + 4].title,
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      AnimatedContainer(
                                        height:
                                            dashboardProvider.showMore ? 15 : 0,
                                        width: 10,
                                        duration: Duration(milliseconds: 200),
                                      ),
                                      GestureDetector(
                                        onTap: dashboardProvider.itemClicked,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            dashboardProvider.showMore
                                                ? Text(
                                                  "See Less",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                )
                                                : Text(
                                                  "See More",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                            const SizedBox(width: 5),
                                            AnimatedRotation(
                                              curve: Curves.linearToEaseOut,
                                              turns:
                                                  dashboardProvider.showMore
                                                      ? 0
                                                      : 0.5,
                                              duration: Duration(
                                                milliseconds: 200,
                                              ),
                                              child: Icon(
                                                Icons.expand_less,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: AutoSizeText(
                            "Payment Activity",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            maxLines: 1,
                          ),
                        ),
                        buildPaymentActivity(),
                        const SizedBox(height: 15),
                        buildIncomeOutcome(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),
                buildMenuIconAnimation(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
