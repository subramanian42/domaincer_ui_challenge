import 'package:flutter/material.dart';
import 'package:ui_challenge/utils/theme/text_style.dart';

class AppTheme {
  AppTheme._();

  static const Color _secondaryColor = Color(0xff96A0B5);
  static const Color _secondaryVariantColor = Color(0xff00BDFF);
  static const Color _iconColor = Color(0xff96A0B5);

  static final ThemeData lightTheme = ThemeData(
    unselectedWidgetColor: const Color(0xffE5EBF0),
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      buttonColor: _secondaryVariantColor,
      colorScheme: ColorScheme.light(
        primary: _secondaryVariantColor,
        secondary: _secondaryColor,
        onSecondary: Colors.white,
      ),
    ),
    iconTheme: const IconThemeData(
      color: _iconColor,
    ),
    textTheme: CustomTextStyle.textTheme,
  );

  static const Color _darkPrimaryColor = Color(0xff181C2B);

  static final ThemeData darkTheme = ThemeData(
    canvasColor: _darkPrimaryColor,
    buttonTheme: const ButtonThemeData(
      textTheme: ButtonTextTheme.primary,
      buttonColor: _secondaryVariantColor,
      colorScheme: ColorScheme.dark(
        primary: _darkPrimaryColor,
        secondary: _secondaryColor,
        onSecondary: Colors.white,
      ),
    ),
    iconTheme: const IconThemeData(
      color: _iconColor,
    ),
    textTheme: CustomTextStyle.textTheme,
  );
}
