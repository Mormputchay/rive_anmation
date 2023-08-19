import 'package:flutter/material.dart';

class CustomPositioned extends StatelessWidget {
  const CustomPositioned({super.key, required this.child, this.sizeBox = 100});
  final Widget child;
  final double sizeBox;
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: Column(
      children: [
        const Spacer(),
        SizedBox(
          height: sizeBox,
          width: sizeBox,
          child: child,
        ),
        const Spacer(
          flex: 2,
        ),
      ],
    ));
  }
}
