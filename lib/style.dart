import 'package:flutter/material.dart';

class Style {
  static const LargeTextSize = 26.0;
  static const MediumTextSize = 20.0;
  static const BodyTextSize = 16.0;

  static const String FontNameDefault = 'Montserrat';

  static const AppBarTextStye = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: MediumTextSize,
    color: Colors.white,
  );

  static const TitleTextStyle = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: LargeTextSize,
    color: Colors.black,
  );

  static const Body1TextStyle = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: BodyTextSize,
    color: Colors.black,
  );

  static ThemeData data() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        textTheme: TextTheme(
          title: AppBarTextStye,
        ),
      ),
      textTheme: TextTheme(
        title: TitleTextStyle,
        body1: Body1TextStyle,
      ),
    );
  }
}
