import 'package:flutter/material.dart';
import 'package:ui_challenge/screens/home.dart/home_screen.dart';
import 'package:ui_challenge/widgets/custom_button.dart';

import 'package:ui_challenge/widgets/custom_app_bar.dart';
import 'package:ui_challenge/widgets/custom_divider.dart';

class RegistrationScreen5 extends StatelessWidget {
  const RegistrationScreen5({Key? key}) : super(key: key);

  static const List<String> experience = [
    'Less than 6 months',
    'More than 1 year',
    'More than 3 years',
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxHeight < 700) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
            backgroundColor: const Color(0xffF8F9FB),
            body: SingleChildScrollView(
              child: SizedBox(
                width: constraints.maxWidth,
                height: 750,
                child: Stack(
                  children: [
                    CustomAppBar(
                      left: constraints.maxWidth / 6,
                      step: 5,
                      percentage: 100,
                      heading: 'Registration Completed',
                      subHeading:
                          'It’s great to have you with us! To optimize your experience, tell me more about you ',
                    ),
                    accountNumber(context, constraints),
                    activateAccount(context, constraints, smallscreen: true),
                    button(constraints, context, smallscreen: true),
                  ],
                ),
              ),
            ),
          ),
        );
      } else {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
            backgroundColor: const Color(0xffF8F9FB),
            body: SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Stack(
                children: [
                  CustomAppBar(
                    left: constraints.maxWidth / 6,
                    step: 5,
                    percentage: 100,
                    heading: 'Registration Completed',
                    subHeading:
                        'It’s great to have you with us! To optimize your experience, tell me more about you ',
                  ),
                  accountNumber(context, constraints),
                  activateAccount(context, constraints),
                  button(constraints, context),
                ],
              ),
            ),
          ),
        );
      }
    });
  }

  Widget button(BoxConstraints constraints, BuildContext context,
      {double height = 200, bool smallscreen = false}) {
    return Positioned(
        top: smallscreen ? 630 : constraints.maxHeight / 1.29,
        child: Container(
          width: constraints.maxWidth,
          height: constraints.maxHeight / 4,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomButton(
                title: 'Next',
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const HomeScreen()));
                },
              ),
            ],
          ),
        ));
  }

  Widget accountNumber(BuildContext context, BoxConstraints constraints) {
    return Positioned(
      top: 235,
      child: Container(
        height: 150,
        width: constraints.maxWidth,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Welcome to FP Markets!',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Your Account Number is:',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Container(
                height: 50,
                width: 330,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffE5EBF0), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        '5760208',
                        style: TextStyle(
                          color: Color(0xff26CC68),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: "SF Pro Display",
                        ),
                      ),
                      const SizedBox(
                        width: 150,
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.copy_all))
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget activateAccount(BuildContext context, BoxConstraints constraints,
      {double height = 200, bool smallscreen = false}) {
    return Positioned(
      top: smallscreen ? 390 : constraints.maxHeight / 2.075,
      child: Container(
        height: 230,
        width: constraints.maxWidth,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'Activate your account',
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'To activate your account we require',
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: CustomDivider(),
            ),
            SizedBox(
              width: 330,
              height: 50,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('1. Proof of Identity'),
                    IconButton(
                      onPressed: () {},
                      iconSize: 24,
                      icon: Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    )
                  ]),
            ),
            const CustomDivider(),
            SizedBox(
              width: 330,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('2. Proof of Address'),
                  IconButton(
                    onPressed: () {},
                    iconSize: 24,
                    icon: Icon(
                      Icons.arrow_drop_down_sharp,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ],
              ),
            ),
            const CustomDivider(),
          ],
        ),
      ),
    );
  }
}
