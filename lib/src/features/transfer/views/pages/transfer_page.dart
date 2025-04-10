import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        foregroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      // body: Item(
      //   gradientColor: LinearGradient(colors: []),
      //   width: 200,
      //   height: 200,
      //   // padding: const EdgeInsets.all(10),
      //   child: Text("data"),
      // ),
    );
  }
}
