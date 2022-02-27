import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.width,
      this.height,
      this.style,
      this.color,
      this.border})
      : super(key: key);
  final String title;
  final void Function() onPressed;
  final double? width;
  final double? height;
  final Color? color;
  final TextStyle? style;
  final BoxBorder? border;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height ?? 50,
        width: width ?? 330,
        //padding: const EdgeInsets.symmetric(horizontal: 10),
        //margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        decoration: BoxDecoration(
          color: color ?? Theme.of(context).buttonTheme.colorScheme!.primary,
          border: border,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(6),
              bottomLeft: Radius.circular(6),
              bottomRight: Radius.circular(6)),
        ),
        child: Center(
          child: Text(
            title,
            style: style ?? Theme.of(context).textTheme.button,
          ),
        ),
      ),
    );
  }
}
