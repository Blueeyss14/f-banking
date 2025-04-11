import 'package:f_banking/src/features/ewallet/viewmodels/ewallet_data_provider.dart';
import 'package:f_banking/src/features/home/viewmodels/dashboard_provider.dart';
import 'package:f_banking/src/features/home/viewmodels/scroll_page_provider.dart';
import 'package:f_banking/src/features/home/viewmodels/sidebar_provider.dart';
import 'package:f_banking/src/features/transfer/viewmodels/transfer_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class SetupProvider {
  static MultiProvider providerData(Widget child) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DashboardProvider()),
        ChangeNotifierProvider(create: (_) => ScrollPageProvider()),
        ChangeNotifierProvider(create: (_) => TransferProvider()),
        ChangeNotifierProvider(create: (_) => EwalletDataProvider()),
        ChangeNotifierProvider(create: (_) => SidebarProvider()),
      ],
      child: child,
    );
  }
}
