import 'package:flutter/material.dart';

import 'package:ui_challenge/screens/Registration/registration_screen4.dart';

import 'package:ui_challenge/widgets/custom_app_bar.dart';
import 'package:ui_challenge/widgets/custom_button.dart';
import 'package:ui_challenge/widgets/custom_drop_down.dart';
import 'package:ui_challenge/widgets/custom_indicator.dart';
import 'package:ui_challenge/widgets/CustomFormField.dart';

class RegistrationScreen3 extends StatelessWidget {
  RegistrationScreen3({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final platform = [
    'MetaTrader',
    'ThinkOrSwim',
    'Etoro',
    'ActiveTraderPro',
  ];
  final currency = [
    'USD - \$',
    'INR - ₹',
    'CNY - ¥',
    'CRC - ₡',
  ];
  final accountType = ['Raw', 'Standard'];
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
                height: 812 * 1.1,
                child: Stack(
                  children: [
                    CustomAppBar(
                      left: constraints.maxWidth / 5.5,
                      step: 3,
                      percentage: 60,
                      heading: 'Choose Trading Account',
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
            body: SingleChildScrollView(
              child: SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxHeight * 1.15,
                child: Stack(
                  children: [
                    CustomAppBar(
                      left: constraints.maxWidth / 5.5,
                      step: 3,
                      percentage: 60,
                      heading: 'Choose Trading Account',
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
                  'Choose Platform',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 24),
                child: CustomDropDown(
                  hint: Text(platform[0],
                      style: Theme.of(context).textTheme.headline2),
                  listitems: platform,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 16),
                child: Text(
                  'Account Type',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 24),
                child: CustomDropDown(
                  hint: Text(accountType[0],
                      style: Theme.of(context).textTheme.headline2),
                  listitems: accountType,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 16),
                child: Text(
                  'Base Currency',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 24),
                child: CustomDropDown(
                  hint: Text(currency[0],
                      style: Theme.of(context).textTheme.headline2),
                  listitems: currency,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 16),
                child: Text(
                  'Trading Account / Portal Password',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 24),
                child: CustomFormField(
                  hintText: 'Password here...',
                  isPassword: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 16),
                child: passwordStrength(constraints),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 16),
                child: passwordCriteria(constraints),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 16),
                child: Text(
                  'Confirm Password',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 24),
                child: CustomFormField(
                  hintText: 'Password here...',
                  isPassword: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 40),
                child: CustomButton(
                    title: 'Next',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegistrationScreen4()));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget passwordCriteria(BoxConstraints constraints) {
    return SizedBox(
      width: 350,
      height: 60,
      child: Row(
        children: [
          Column(
            children: [
              CustomIndicator(text: 'Minimum 7 characters long'),
              CustomIndicator(text: 'Contain upper case'),
              CustomIndicator(text: 'Contain lower case'),
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            children: [
              CustomIndicator(text: 'Contain symbol'),
              CustomIndicator(text: 'Contain number'),
            ],
          ),
        ],
      ),
    );
  }

  Widget passwordStrength(BoxConstraints constraints) {
    const double customHeight = 5;
    const double width = 290 / 5;
    const Widget space = SizedBox(
      width: 10,
    );
    return Row(
      children: [
        Container(
          height: customHeight,
          width: width,
          color: const Color(0xffF1F2F3),
        ),
        space,
        Container(
          height: customHeight,
          width: width,
          color: const Color(0xffF1F2F3),
        ),
        space,
        Container(
          height: customHeight,
          width: width,
          color: const Color(0xffF1F2F3),
        ),
        space,
        Container(
          height: customHeight,
          width: width,
          color: const Color(0xffF1F2F3),
        ),
        space,
        Container(
          height: customHeight,
          width: width,
          color: const Color(0xffF1F2F3),
        ),
      ],
    );
  }
}
