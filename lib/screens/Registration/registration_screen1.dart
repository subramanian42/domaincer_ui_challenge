import 'package:flutter/material.dart';
import 'package:ui_challenge/screens/Registration/registration_screen2.dart';
import 'package:ui_challenge/widgets/telephone_codes.dart';
import 'package:ui_challenge/widgets/custom_app_bar.dart';
import 'package:ui_challenge/widgets/custom_drop_down.dart';
import 'package:ui_challenge/widgets/CustomFormField.dart';
import 'package:ui_challenge/widgets/custom_button.dart';

class RegistrationScreen1 extends StatelessWidget {
  RegistrationScreen1({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  final accountType = [
    'Individuals',
    'Joint',
  ];
  final country = ['India', 'Australia', 'Austria', 'America'];
  final gender = ['Male', 'Female', 'Prefer not to say'];

  static const List<Widget> countryWidgets = [
    Telephonecodes(
      code: '+1',
      imageUrl: 'assets/country_flags/united-states.png',
    ),
    Telephonecodes(
      code: '+61',
      imageUrl: 'assets/country_flags/australia.png',
    ),
    Telephonecodes(
      code: '+43',
      imageUrl: 'assets/country_flags/austria.png',
    ),
    Telephonecodes(
      code: '+91',
      imageUrl: 'assets/country_flags/india.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constriants) {
      if (constriants.maxHeight < 700) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: SafeArea(
            child: Scaffold(
              backgroundColor: const Color(0xffF8F9FB),
              body: SingleChildScrollView(
                child: SizedBox(
                  width: constriants.maxWidth,
                  height: 812 * 1.25,
                  child: Stack(
                    children: [
                      const CustomAppBar(
                        step: 1,
                        percentage: 20,
                        heading: 'Hi, Welcome!',
                        subHeading:
                            'Would you like to create new account? Don’t worry only 3 minutes to create.',
                      ),
                      _form(constriants, context),
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
                width: constriants.maxWidth,
                height: constriants.maxHeight * 1.32,
                child: Stack(
                  children: [
                    const CustomAppBar(
                      step: 1,
                      percentage: 20,
                      heading: 'Hi, Welcome!',
                      subHeading:
                          'Would you like to create new account? Don’t worry only 3 minutes to create.',
                    ),
                    _form(constriants, context),
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
                  'Email',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 24),
                child: CustomFormField(
                  hintText: 'Ex. Nadhira@mail.com',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 16),
                child: Text(
                  'First & Middle Name',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 24),
                child: CustomFormField(
                  hintText: 'Ex. Nadhira Amalia',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 16),
                child: Text(
                  'Last Name',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 24),
                child: CustomFormField(
                  hintText: 'Ex. Xaverus',
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
                  'Country',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 24),
                child: CustomDropDown(
                  hint: Text('Select One',
                      style: Theme.of(context).textTheme.headline2),
                  listitems: country,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 16),
                child: Text(
                  'Gender',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 24),
                child: CustomDropDown(
                  hint: Text('Select gender',
                      style: Theme.of(context).textTheme.headline2),
                  listitems: gender,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 16),
                child: Text(
                  'Phone',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 24),
                child: Row(
                  children: [
                    CustomDropDown(
                      width: 104,
                      hint: countryWidgets[0],
                      listWidgets: countryWidgets,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomFormField(
                      width: 215,
                      hintText: 'Ex. 208301',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  top: 30,
                ),
                child: bottomText(context),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: CustomButton(
                  title: 'Next',
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => RegistrationScreen2(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomText(BuildContext context) {
    return SizedBox(
      width: 330,
      height: 53,
      child: Align(
        alignment: Alignment.centerLeft,
        child: RichText(
          text: TextSpan(children: <TextSpan>[
            TextSpan(
              text:
                  'By continuing you confirm that you over 18 years and agree to the terms of FP markets',
              style: Theme.of(context).textTheme.headline6,
            ),
            TextSpan(
              text: ' Privacy Policy.',
              style: Theme.of(context).textTheme.headline4,
            ),
          ]),
        ),
      ),
    );
  }
}
