import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homeclean/core/utils/app_colors.dart';

abstract class AppThemes {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.cairoTextTheme(),
  );
}
