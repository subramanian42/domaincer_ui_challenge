import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key, this.width}) : super(key: key);
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFE5EBF0),
      width: width ?? 330,
      height: 0.95,
    );
  }
}
