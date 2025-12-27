import 'package:flutter/material.dart';
import 'package:islamiapp/core/theme/color_pallet.dart';

abstract class ThemManager {
  static ThemeData theme = ThemeData(
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontFamily: 'Janna',
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: ColorPallet.generalTextColor,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Janna',
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: ColorPallet.generalTextColor,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Janna',
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: ColorPallet.generalTextColor,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Janna',
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: ColorPallet.generalTextColor,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Janna',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: ColorPallet.generalTextColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorPallet.primaryColor,
      showUnselectedLabels: false,
      selectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
    ),
  );
}
