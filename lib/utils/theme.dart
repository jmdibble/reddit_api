import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reddit_api/utils/colors.dart';

ThemeData theme = ThemeData(
  primaryColor: Colors.black,
  colorScheme: ColorScheme.light(
    primary: Colors.black,
  ),
  scaffoldBackgroundColor: AppColors.bgGrey,
  textTheme:
      GoogleFonts.montserratTextTheme().apply(bodyColor: AppColors.mainBlue),
  primaryTextTheme:
      GoogleFonts.montserratTextTheme().apply(bodyColor: AppColors.mainBlue),
  appBarTheme: AppBarTheme(
    color: AppColors.mainBlue,
    titleTextStyle: GoogleFonts.montserrat(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.1,
    ),
  ),
);
