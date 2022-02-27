import 'package:flutter/material.dart';

class Telephonecodes extends StatelessWidget {
  const Telephonecodes({Key? key, required this.code, required this.imageUrl})
      : super(key: key);
  final String code;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 22,
          width: 22,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
          ),
        ),
        const SizedBox(
          width: 4.5,
        ),
        Text(
          code,
          style: Theme.of(context).textTheme.headline5, //bodyText1,
        )
      ],
    );
  }
}
