import 'package:flutter/material.dart';
// import 'package:package_info_plus/package_info_plus.dart';

class GlobalDataHelper {
  static GlobalDataHelper instance = GlobalDataHelper();
  Uri? currentUri;
  String version = "v1.0.0";

  void initAll() async {
    // PackageInfo packageInfo = await PackageInfo.fromPlatform();
    // version = "v" + packageInfo.version + "b" + packageInfo.buildNumber;
  }
}

const companyTitle = "LiveTrack";
const Color black1 = Color(0xff000000);
const Color black2 = Color(0xff333E41);
const Color gray0 = Color(0xffEEEEEE);
const Color gray01 = Color(0xffF6F6F6);
const Color gray1 = Color.fromRGBO(235, 235, 235, 1);
const Color gray2 = Color.fromRGBO(217, 217, 217, 1);
const Color gray3 = Color.fromRGBO(186, 186, 186, 1);
const Color gray4 = Color(0xffA2A0A8);
const Color lightBlue1 = Color.fromRGBO(237, 240, 253, 1);
const Color lightPurple1 = Color(0xffF0EEFE);
const Color purple = Color(0xff6C4FFF);
const Color blue1 = Color(0xFF4263EB);
const Color blue2 = Color(0xFF2445CD);
const Color darkBlue1 = Color(0xff211F32);
const Color white = Color(0xffffffff);
const Color red1 = Color(0xFFFF6262);
const Color yellow = Color(0xffFDDA5D);
const Color green1 = Color(0xff01494E);
const Color green2 = Color(0xff5D9C94);
const Color whitePale = Color(0xffFAFAFA);

// ThemeData getGlobalThemData() {
//   final ThemeData base = ThemeData.light();
//   return ThemeData(
//     primaryColor: Colors.white,
//     fontFamily: 'Manrope',
//     appBarTheme: const AppBarTheme(color: Colors.white),
//     textTheme: _getTextThemeData(base.textTheme),
//     textButtonTheme: TextButtonThemeData(
//       style: TextButton.styleFrom(shadowColor: gray1),
//     ),
//     // buttonTheme: const ButtonThemeData(
//     //     buttonColor: gray1, hoverColor: gray2, focusColor: gray2)
//   );
// }

// TextTheme _getTextThemeData(TextTheme base) {
//   return base.copyWith(
//     headlineLarge: GoogleFonts.manrope(
//       textStyle: TextStyle(
//         color: base.headlineLarge!.color,
//         fontSize: 20,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     titleLarge: GoogleFonts.manrope(
//       textStyle: TextStyle(color: base.titleLarge!.color, fontSize: 18),
//     ),
//     titleSmall: GoogleFonts.manrope(
//       textStyle: TextStyle(
//         color: base.titleSmall!.color,
//         fontSize: 14,
//         fontWeight: FontWeight.w500,
//       ),
//     ),
//     bodyLarge: GoogleFonts.manrope(
//       textStyle: TextStyle(color: base.bodyLarge!.color, fontSize: 16),
//     ),
//   );
// }
