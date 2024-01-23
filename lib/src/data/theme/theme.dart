import 'package:app/src/presentation/global/colors.dart';
import 'package:flutter/material.dart';

ThemeData darkModeTheme = ThemeData(
  brightness: Brightness.dark,
);

ThemeData lightModeTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColors.white50,
  primaryColor: AppColors.electricViolet500,
  secondaryHeaderColor: AppColors.electricViolet400,
);
