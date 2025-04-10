import 'package:auto_size_text/auto_size_text.dart';
import 'package:f_banking/src/shared/components/item.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
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
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [Item()]),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: AutoSizeText(
                    "Enter Account Number",
                    style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Item(height: 50, width: 50, child: Text("data")),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.numberWithOptions(),
                        style: TextStyle(color: white),
                        cursorColor: darkBlue,
                        decoration: InputDecoration(
                          labelText: "Account Number",
                          labelStyle: TextStyle(color: white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: white),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: white),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          isDense: false,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Item(
                  borderRadius: BorderRadius.circular(10),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    "Continue",
                    style: TextStyle(color: white, fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
