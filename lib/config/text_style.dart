// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helpers/global_data_helper.dart';

class AppTheme {
  static bool isLightTheme = true;

  static ThemeData getTheme() {
    if (isLightTheme) {
      return lightTheme();
    } else {
      return darkTheme();
    }
  }

  static TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(
      headlineLarge: GoogleFonts.roboto(
        textStyle: TextStyle(
          color: base.headlineLarge!.color,
          fontSize: 50,
          fontWeight: FontWeight.w900,
        ),
      ),
      headlineMedium: GoogleFonts.roboto(
        textStyle: TextStyle(
          color: base.headlineLarge!.color,
          fontSize: 45,
          fontWeight: FontWeight.w900,
        ),
      ),
      displayLarge: GoogleFonts.roboto(
        textStyle: TextStyle(
          color: base.headlineLarge!.color,
          fontSize: 35,
          fontWeight: FontWeight.w900,
        ),
      ),
      displayMedium: GoogleFonts.roboto(
        textStyle: TextStyle(
          color: base.headlineLarge!.color,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      displaySmall: GoogleFonts.roboto(
        textStyle: TextStyle(
          color: base.headlineLarge!.color,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      titleLarge: GoogleFonts.roboto(
        textStyle: TextStyle(
          color: base.headlineLarge!.color,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      titleMedium: GoogleFonts.roboto(
        textStyle: TextStyle(
          color: base.headlineLarge!.color,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      titleSmall: GoogleFonts.roboto(
        textStyle: TextStyle(
          color: base.headlineLarge!.color,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      bodyLarge: GoogleFonts.roboto(
        textStyle: TextStyle(
          color: base.headlineLarge!.color,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      bodyMedium: GoogleFonts.roboto(
        textStyle: TextStyle(
          color: base.headlineLarge!.color,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      bodySmall: GoogleFonts.roboto(
        textStyle: TextStyle(
          color: base.headlineLarge!.color,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  static ThemeData lightTheme() {
    Color primaryColor = green1;
    Color secondaryColor = green2;
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );

    final ThemeData base = ThemeData.light();
    return base.copyWith(
      appBarTheme: AppBarTheme(color: Colors.white),
      popupMenuTheme: PopupMenuThemeData(color: Colors.white),
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      splashColor: Colors.white.withOpacity(0.1),
      hoverColor: Colors.transparent,
      splashFactory: InkRipple.splashFactory,
      highlightColor: Colors.transparent,
      canvasColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.textTheme),
      platform: TargetPlatform.iOS,
      indicatorColor: primaryColor,
      disabledColor: HexColor("#D5D7D8"),
    );
  }

  static ThemeData darkTheme() {
    Color primaryColor = purple;
    Color secondaryColor = blue2;
    final ColorScheme colorScheme = const ColorScheme.light().copyWith(
      primary: primaryColor,
      secondary: secondaryColor,
    );
    final ThemeData base = ThemeData.dark();
    return base.copyWith(
      popupMenuTheme: PopupMenuThemeData(color: Colors.black),
      appBarTheme: AppBarTheme(color: Colors.black),
      colorScheme: colorScheme,
      primaryColor: primaryColor,
      indicatorColor: Colors.white,
      splashColor: Colors.white24,
      splashFactory: InkRipple.splashFactory,
      canvasColor: Colors.white,
      scaffoldBackgroundColor: Colors.grey[850],
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        textTheme: ButtonTextTheme.primary,
      ),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
      platform: TargetPlatform.iOS,
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
