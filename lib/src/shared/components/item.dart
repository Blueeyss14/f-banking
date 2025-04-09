import 'package:f_banking/src/shared/style.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  const Item({
    super.key,
    this.height,
    this.width,
    this.child,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: margin,
      alignment: Alignment.center,
      padding: padding,
      clipBehavior: Clip.antiAlias,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: darkBlue3,
        borderRadius: BorderRadius.circular(5),
        border: Border(
          top: BorderSide(width: 0.5, color: Colors.grey.withAlpha(120)),
          right: BorderSide(width: 0.5, color: Colors.grey.withAlpha(120)),
        ),
      ),
      duration: Duration(milliseconds: 200),
      child: child,
    );
  }
}

    //  width: dashboardProvider.itemSize,
    //   height: dashboardProvider.itemSize,