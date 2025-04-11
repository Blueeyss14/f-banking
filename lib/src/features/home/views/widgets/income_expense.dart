import 'package:auto_size_text/auto_size_text.dart';
import 'package:f_banking/src/features/home/models/status_model.dart';
import 'package:f_banking/src/shared/components/item.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

Widget buildIncomeExpense(BuildContext context) {
  final List<Widget> items = [];
  double size = 70;

  List<StatusModel> statusData = StatusModel.statusData();

  for (int i = 0; i < statusData.length; i++) {
    final amount = (statusData[i].amount / 500).clamp(0.0, 1.0);
    final percentText = "${(amount * 100).toStringAsFixed(1)}%";
    if (i > 0) {
      items.add(const SizedBox(width: 10));
    }
    items.add(
      Flexible(
        child: Item(
          gradientColor: LinearGradient(
            colors: [darkBlue2, statusData[i].color.withAlpha(0)],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
          color: darkBlue2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      statusData[i].icon,
                      color: statusData[i].color,
                      shadows: [
                        Shadow(
                          color: Colors.black.withAlpha(50),
                          offset: Offset(1, 1),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: size,
                width: size,
                child: CircularPercentIndicator(
                  radius: size / 2,
                  lineWidth: 8,
                  percent: amount,
                  animation: true,
                  animationDuration: 1000,
                  circularStrokeCap: CircularStrokeCap.round,
                  backgroundColor: white,
                  linearGradient: LinearGradient(
                    colors: [white, statusData[i].color],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  center: AutoSizeText(
                    percentText,
                    maxLines: 1,
                    style: TextStyle(color: white),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.all(8.0),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "${statusData[i].type}:",
                      style: TextStyle(
                        color: white,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                    ),
                    AutoSizeText(
                      "${statusData[i].amount}\$",
                      style: TextStyle(color: white, fontSize: 20),
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  return Row(children: items);
}
