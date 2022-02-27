import 'package:flutter/material.dart';
import 'package:ui_challenge/screens/Registration/registration_screen3.dart';
import 'package:ui_challenge/utils/validator.dart';
import 'package:ui_challenge/widgets/custom_tile.dart';
import 'package:ui_challenge/widgets/custom_app_bar.dart';
import 'package:ui_challenge/widgets/custom_button.dart';
import 'package:ui_challenge/widgets/custom_divider.dart';
import 'package:ui_challenge/widgets/custom_drop_down.dart';
import 'package:ui_challenge/widgets/CustomFormField.dart';

class RegistrationScreen2 extends StatelessWidget {
  RegistrationScreen2({Key? key}) : super(key: key);
  final annualIncome = [
    '> \$50,000 a year',
    '\$50,000 a year',
    '<\$50,000 a year',
  ];
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxHeight < 700) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: SafeArea(
            child: Scaffold(
              backgroundColor: const Color(0xffF8F9FB),
              body: SingleChildScrollView(
                child: SizedBox(
                  width: constraints.maxWidth,
                  height: 812 * 1.5,
                  child: Stack(
                    children: [
                      const CustomAppBar(
                        step: 2,
                        percentage: 40,
                        heading: 'More about you',
                        subHeading:
                            'It’s great to have you with us! To optimize your experience, tell me more about you ',
                      ),
                      _form(constraints, context),
                    ],
                  ),
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
                height: constraints.maxHeight * 1.57,
                child: Stack(
                  children: [
                    const CustomAppBar(
                      step: 2,
                      percentage: 40,
                      heading: 'More about you',
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
                  'Date of Birth',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 24),
                child: CustomFormField(
                    hintText: 'DD-MM-YYYY',
                    validator: (value) {
                      if (!RegExp(validator.dateValidator).hasMatch(value!)) {
                        return 'Enter a valid Date of Birth';
                      } else {
                        return null;
                      }
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 16),
                child: Text(
                  'Street Number',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 24),
                child: CustomFormField(
                  hintText: 'Ex. 8',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 16),
                child: Text(
                  'Address',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 24),
                child: CustomFormField(
                  hintText: 'Ex. 8 Shirley Ave. South El Monte, CA',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 16),
                child: Text(
                  'Postal Zip Code',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 24),
                child: CustomFormField(
                  hintText: 'Ex. 91733',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 16),
                child: Text(
                  'City',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 24),
                child: CustomFormField(
                  hintText: 'Ex. California',
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 24),
                child: CustomDivider(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 20),
                child: Text(
                  'Financial Information',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 16),
                child: Text(
                  'Annual Income',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 24),
                child: CustomDropDown(
                  hint: Text('Select One',
                      style: Theme.of(context).textTheme.headline2),
                  listitems: annualIncome,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 16),
                child: Text(
                  'Source of Funds',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              const CustomTile(text: 'Employment'),
              const CustomTile(text: 'Investment and Savings'),
              const CustomTile(text: 'Gift'),
              const CustomTile(text: 'Pension'),
              const CustomTile(text: 'Other (Please Specify)'),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 40),
                child: CustomButton(
                    title: 'Next',
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegistrationScreen3()));
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
