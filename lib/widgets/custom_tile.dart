import 'package:flutter/material.dart';

class CustomTile extends StatefulWidget {
  const CustomTile({
    Key? key,
    required this.text,
    this.ispara = false,
    this.style,
    this.height,
    this.padding,
  }) : super(key: key);
  final TextStyle? style;
  final String text;
  final bool ispara;
  final double? height;
  final EdgeInsetsGeometry? padding;
  @override
  State<CustomTile> createState() => _CustomTileState();
}

class _CustomTileState extends State<CustomTile> {
  bool? checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
              value: checkedValue,
              onChanged: (newValue) => setState(() {
                    checkedValue = newValue;
                  })),
          widget.ispara
              ? SizedBox(
                  width: 275,
                  height: widget.height ?? 42.5,
                  child: Padding(
                    padding: widget.padding ?? const EdgeInsets.only(top: 10),
                    child: Text(
                      widget.text,
                      style:
                          widget.style ?? Theme.of(context).textTheme.headline5,
                    ),
                  ),
                )
              : Text(
                  widget.text,
                  style: Theme.of(context).textTheme.headline5,
                ),
        ],
      ),
    );
  }
}
