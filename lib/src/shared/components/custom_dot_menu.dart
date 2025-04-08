import 'package:flutter/material.dart';

class CustomDotMenu extends StatelessWidget {
  final Widget? child;
  final double? size;
  const CustomDotMenu({super.key, this.child, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size ?? 8,
      height: size ?? 8,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: child,
    );
  }
}
