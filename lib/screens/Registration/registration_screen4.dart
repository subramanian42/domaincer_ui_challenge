import 'package:flutter/material.dart';
import 'package:ui_challenge/screens/Registration/registration_screen5.dart';
import 'package:ui_challenge/widgets/custom_tile.dart';
import 'package:ui_challenge/widgets/custom_app_bar.dart';
import 'package:ui_challenge/widgets/custom_button.dart';
import 'package:ui_challenge/widgets/custom_divider.dart';
import 'package:ui_challenge/widgets/custom_drop_down.dart';

class RegistrationScreen4 extends StatelessWidget {
  RegistrationScreen4({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
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
                height: 812,
                child: Stack(
                  children: [
                    const CustomAppBar(
                      //left: 24,
                      step: 4,
                      percentage: 80,
                      heading: 'Few questions',
                      subHeading:
                          'It’s great to have you with us! To optimize your experience, tell me more about you ',
                    ),
                    _form(constraints, context),
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
                  const CustomAppBar(
                    //left: 24,
                    step: 4,
                    percentage: 80,
                    heading: 'Few questions',
                    subHeading:
                        'It’s great to have you with us! To optimize your experience, tell me more about you ',
                  ),
                  _form(constraints, context),
                ],
              ),
            ),
          ),
        );
      }
    });
  }

  Widget _form(BoxConstraints constraints, BuildContext context) {
    return Positioned(
      top: 235,
      child: Container(
        width: constraints.maxWidth,
        height: (constraints.maxHeight * 1.5),
        color: Colors.white,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 20),
                child: Text(
                  'Do you have experience in trading?',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 24),
                child: CustomDropDown(
                  hint: Text(experience[0],
                      style: Theme.of(context).textTheme.headline2),
                  listitems: experience,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 24),
                child: CustomDivider(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 20),
                child: Text(
                  'Declaration',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 20),
                child: SizedBox(
                  width: 330,
                  height: 60,
                  child: Text(
                    'Tick the box below once you have reviewed and accepted the terms and condition as outlined in the following documents.',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ),
              CustomTile(
                padding: const EdgeInsets.only(top: 18),
                height: 60,
                text:
                    'I acknowledge that i have received, read, understood and agree to following documents supplied by FP Markets.',
                ispara: true,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70, top: 7),
                child: Text(
                  'Client Agreement Policy',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70, top: 6),
                child: Text(
                  'Order Execution Policy',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70, top: 6),
                child: Text(
                  'Conflict of Interest Policy',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              CustomTile(
                padding: const EdgeInsets.only(top: 27),
                height: 80,
                text:
                    'By ticking this box, i agree to execute and be legally bound by the Account Terms and Conditions and Privacy Policy in relation to the financial products to be traded now or in the future',
                ispara: true,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 40),
                child: CustomButton(
                    title: 'Next',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const RegistrationScreen5()));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
