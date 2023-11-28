import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class AppTheme {
  // final ThemeMode themeMode;
  // AppTheme({required this.themeMode});

  static ThemeData lightTheme = ThemeData(
    primaryColor: Colors.white,
    colorScheme: ColorScheme.light(
      primary: Colors.white,
      secondary: HexColor('#FB0101'),
      tertiary: Colors.black,
      tertiaryContainer: HexColor('#F2F2F2'),
    ),
    textTheme: TextTheme(
        displayLarge: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 21,
        ),
        displayMedium: const TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          overflow: TextOverflow.ellipsis,
        ),
        headlineMedium: TextStyle(
          color: HexColor("#595E60"),
        ),
        headlineSmall: TextStyle(
          color: HexColor("#7F7F7F"),
        )),
    fontFamily: GoogleFonts.nunito().fontFamily,
    useMaterial3: true,
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: HexColor('#FB0101'),
      selectionHandleColor: HexColor('#FB0101'),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: Colors.black,
    colorScheme: ColorScheme.dark(
      primary: Colors.black,
      secondary: HexColor('#FB0101'),
      tertiary: Colors.white,
      tertiaryContainer: HexColor('#2B2B2B'),
    ),
    textTheme: TextTheme(
      displayLarge: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 21,
      ),
      displayMedium: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        overflow: TextOverflow.ellipsis,
      ),
      headlineMedium: TextStyle(
        color: HexColor("#F5F5F5"),
      ),
      headlineSmall: TextStyle(
        color: HexColor("#E8E2E2"),
      ),
    ),
    fontFamily: GoogleFonts.nunito().fontFamily,
    useMaterial3: true,
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: HexColor('#FB0101'),
      selectionHandleColor: HexColor('#FB0101'),
    ),
  );
}
