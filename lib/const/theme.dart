import 'package:flutter/material.dart';

const primaryColor = Color(0xFF5e059e);
const primaryColorLight = Color(0xFFf7f9fc);
const primaryColorDark = Color(0xFF28458a);

const secondaryColor = Color(0xFFb2dfdb);
const secondaryColorLight = Color(0xFFe5ffff);
const secondaryColorDark = Color(0xFF82ada9);

const background = Color(0xFF080203);
const textColor = Color(0xFFd7e1f7);

class CustomTheme {
  static final ThemeData defaultTheme = _buildMyTheme();

  static ThemeData _buildMyTheme() {
    final ThemeData base = ThemeData.light();

    return base.copyWith(
      primaryColor: primaryColor,
      primaryColorDark: primaryColorDark,
      primaryColorLight: primaryColorLight,
      buttonTheme: base.buttonTheme.copyWith(
        buttonColor: secondaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
      scaffoldBackgroundColor: background,
      cardColor: background,
      backgroundColor: background,
      textTheme: base.textTheme.copyWith(
        titleLarge: base.textTheme.titleLarge!.copyWith(color: textColor),
        bodyLarge: base.textTheme.bodyLarge!.copyWith(color: textColor),
      ),
    );
  }
}
