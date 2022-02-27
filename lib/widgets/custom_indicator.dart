import 'package:flutter/material.dart';

class CustomIndicator extends StatefulWidget {
  CustomIndicator({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  State<CustomIndicator> createState() => _CustomIndicatorState();
}

class _CustomIndicatorState extends State<CustomIndicator> {
  static const double containerSize = 10;
  @override
  Widget build(BuildContext context) {
    //textHeading6

    return Center(
      child: SizedBox(
        width: 160,
        height: 20,
        child: Row(
          children: [
            Container(
              width: containerSize,
              height: containerSize,
              decoration: BoxDecoration(
                  color: const Color(0xffF8F9FB),
                  borderRadius: BorderRadius.circular(10)),
            ),
            const SizedBox(
              width: 6,
            ),
            Text(
              widget.text,
              style: Theme.of(context).textTheme.headline6,
            )
          ],
        ),
      ),
    );
  }
}
