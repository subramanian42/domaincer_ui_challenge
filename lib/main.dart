import 'package:flutter/material.dart';
import 'package:ui_challenge/screens/Registration/registration_screen1.dart';

import 'package:ui_challenge/utils/theme/app_theme.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trading App',
      theme: AppTheme.lightTheme,
      home: RegistrationScreen1(),
    );
  }
}
