import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    this.left,
    required this.percentage,
    required this.heading,
    required this.subHeading,
    required this.step,
  }) : super(key: key);
  final double? left;
  final int step;
  final int percentage;
  final String heading;
  final String subHeading;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: 215,
        width: constraints.maxWidth,
        color: Colors.white,
        child: Stack(
          children: [
            topProgressBar(constraints),
            stepCount(
              context,
              constraints,
            ),
            topText(context, constraints),
            bottomText(context, constraints),
          ],
        ),
      );
    });
  }

  Widget topProgressBar(BoxConstraints constraints) {
    double height = 5;
    double width = constraints.maxWidth - 48;
    return Positioned(
      top: 60,
      left: 24,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xffF1F2F3),
        ),
        alignment: Alignment.centerLeft,
        child: Container(
          height: height,
          width: ((constraints.maxWidth - 48) * (percentage / 100)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(colors: [
              Color(0xff00BDFF),
              Color(0xff25CC68),
            ]),
          ),
        ),
      ),
    );
  }

  Widget stepCount(BuildContext context, BoxConstraints constraints) {
    return Positioned(
      top: 100,
      left: constraints.maxWidth / 2.5,
      child: Text(
        'Step $step of 5',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }

  Widget topText(BuildContext context, BoxConstraints constraints) {
    return Positioned(
      top: 120,
      left: left ?? constraints.maxWidth / 3.5,
      child: Text(
        heading,
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }

  Widget bottomText(BuildContext context, BoxConstraints constraints) {
    return Positioned(
      top: 160,
      left: 75,
      child: SizedBox(
        width: 250,
        height: 150,
        child: Text(
          subHeading,
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
    );
  }
}
