import 'package:f_banking/src/features/home/views/pages/home_page.dart';
import 'package:f_banking/src/providers/setup_provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SetupProvider.providerData(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
