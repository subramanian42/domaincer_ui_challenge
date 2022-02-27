import 'package:flutter/material.dart';

class CustomTextStyle {
  static const Color _primaryTextColor = Color(0xff152A4A);

  static const Color _primaryVariantTextColor = Color(0xff3E495C);
  static const Color _secondaryTextColor = Color(0xff96A0B5);
  static const Color _secondaryVariantTextColor = Color(0xff00BDFF);
  static const TextTheme textTheme = TextTheme(
    headline1: CustomTextStyle.screenHeading1TextStyle,
    headline2: CustomTextStyle.screenHeading2TextStyle,
    headline3: CustomTextStyle.screenHeading3TextStyle,
    headline4: CustomTextStyle.screenHeading4TextStyle,
    headline5: CustomTextStyle.screenHeading5TextStyle,
    headline6: CustomTextStyle.screenHeading6TextStyle,
    bodyText1: CustomTextStyle.screenBody1TextStyle,
    bodyText2: CustomTextStyle.screenBody2TextStyle,
    subtitle1: CustomTextStyle.subTitle1TextStyle,
    button: CustomTextStyle.buttonTextStyle,
    overline: CustomTextStyle.overlineTextStyle,
  );

  static const TextStyle screenHeading2TextStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: _secondaryTextColor,
      fontFamily: "SF Pro Display");
  static const TextStyle screenHeading1TextStyle = TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
      color: _primaryTextColor,
      fontFamily: "SF Pro Display");
  static const TextStyle screenHeading3TextStyle = TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: _secondaryTextColor,
      fontFamily: "SF Pro Display");
  static const TextStyle screenHeading4TextStyle = TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w600,
      color: _secondaryVariantTextColor,
      fontFamily: "SF Pro Display");
  static const TextStyle screenHeading5TextStyle = TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: _primaryTextColor,
      fontFamily: "SF Pro Display");
  static const TextStyle screenHeading6TextStyle = TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      color: _secondaryTextColor,
      fontFamily: "SF Pro Display");
  static const TextStyle buttonTextStyle = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontFamily: "SF Pro Display");
  static const TextStyle screenBody1TextStyle = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: _primaryTextColor,
      fontFamily: "SF Pro Display");
  static const TextStyle screenBody2TextStyle = TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: _primaryVariantTextColor,
      fontFamily: "SF Pro Display");
  static const TextStyle subTitle1TextStyle = TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      color: _primaryTextColor,
      fontFamily: "SF Pro Display");
  static const TextStyle overlineTextStyle = TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontFamily: "SF Pro Display");
}
