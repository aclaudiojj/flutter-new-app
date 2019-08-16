import 'package:flutter/material.dart';

class Style {
  static const LargeTextSize = 22.0;
  static const MediumTextSize = 16.0;
  static const SmallTextSize = 12.0;

  static const String FontNameDefault = 'Montserrat';

  static const Color TextColorDark = Colors.black;
  static const Color TextColorLight = Colors.white;
  static const Color TextColorAccent = Colors.red;
  static const Color TextColorFaint = Color.fromRGBO(125, 125, 125, 1.0);

  static const DefaultPaddingHorizontal = 12.0;

  static const AppBarTextStyle = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: MediumTextSize,
    color: Colors.white,
  );

  static const TitleTextStyle = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: LargeTextSize,
    color: TextColorDark,
  );

  static const SubTitleTextStyle = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: MediumTextSize,
    color: TextColorAccent,
  );

  static const CaptionTextStyle = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: SmallTextSize,
    color: TextColorDark,
  );

  static const Body1TextStyle = TextStyle(
    fontFamily: FontNameDefault,
    fontWeight: FontWeight.w300,
    fontSize: MediumTextSize,
    color: Colors.black,
  );

  static ThemeData data() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        textTheme: TextTheme(
          title: AppBarTextStyle,
        ),
      ),
      textTheme: TextTheme(
        title: TitleTextStyle,
        subtitle: SubTitleTextStyle,
        caption: CaptionTextStyle,
        body1: Body1TextStyle,
      ),
    );
  }
}
