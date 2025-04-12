import 'package:f_banking/src/features/education/view/education_page.dart';
import 'package:f_banking/src/features/ewallet/views/ewallet_page.dart';
import 'package:f_banking/src/features/home/views/pages/fbanking_page.dart';
import 'package:f_banking/src/features/home/views/pages/notification_page.dart';
import 'package:f_banking/src/features/home/views/pages/transaction_page.dart';
import 'package:f_banking/src/features/transfer/views/pages/transfer_page.dart';
import 'package:flutter/widgets.dart';

final List<Widget> featureRoute = const [
  TransferPage(),
  EwalletPage(),
  SizedBox(),
  SizedBox(),
];

final List<Widget> featureRoute2 = const [
  EducationPage(),
  SizedBox(),
  SizedBox(),
  SizedBox(),
];

final List<Widget> pagesRoute = const [
  FbankingPage(),
  TransactionPage(),
  NotificationPage(),
];
