import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primaryColor = Color(0xffB7935F);
  static const Color darkprimaryColor = Color(0xff141A2E);

  static const Color blackColor = Color(0xff242424);
  static const Color yellowColor = Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        iconTheme: IconThemeData(color: blackColor),
        titleTextStyle: GoogleFonts.elMessiri(
            color: const Color(0xff242424),
            fontSize: 30,
            fontWeight: FontWeight.bold),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            color: const Color(0xff242424),
            fontSize: 30,
            fontWeight: FontWeight.bold),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: const Color(0xff242424),
        ),
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: const Color(0xff242424),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: primaryColor,
        selectedItemColor: blackColor,
        unselectedItemColor: Colors.white,
      ));

  static ThemeData darkTheme = ThemeData(
      primaryColor: darkprimaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        iconTheme: IconThemeData(color: blackColor),
        titleTextStyle: GoogleFonts.elMessiri(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: Colors.white,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: darkprimaryColor,
        selectedItemColor: yellowColor,
        unselectedItemColor: Colors.white,
      ));
}
