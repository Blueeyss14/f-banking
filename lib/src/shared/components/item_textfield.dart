import 'package:auto_size_text/auto_size_text.dart';
import 'package:f_banking/src/shared/components/item.dart';
import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';

class ItemTextfield extends StatelessWidget {
  final String? title;
  final String? labelText;
  final Widget? image;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final TextInputType? keyboardType;
  final Gradient? gradientColor;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  const ItemTextfield({
    super.key,
    this.title,
    this.image,
    this.padding,
    this.labelText,
    this.borderRadius,
    this.keyboardType,
    this.gradientColor,
    this.onChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Item(
      gradientColor: gradientColor,
      color: darkBlue2,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
        children: [
          Container(
            padding: padding,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(10),
            ),
            height: 60,
            width: 60,
            child: image,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AutoSizeText(
                  title ?? "title",
                  style: TextStyle(
                    color: white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: controller,
                  onChanged: onChanged,
                  keyboardType:
                      keyboardType ?? TextInputType.numberWithOptions(),
                  style: TextStyle(color: white),
                  cursorColor: white,
                  decoration: InputDecoration(
                    labelText: labelText ?? "Label Text",
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
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
