import 'package:flutter/material.dart';

import '../constants.dart';
import 'manage_colors.dart';
import 'manage_text_style.dart';

class ManageTheme {
  static ThemeData theme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: ManageColors.c4,
    textTheme: TextTheme(
      headlineLarge: ManageTextStyle.appBarTitleTextStyle,
      titleLarge: ManageTextStyle.onboardingTitleTextStyle,
      titleSmall: ManageTextStyle.onboardingSubtitleTextStyle,
      displayMedium: ManageTextStyle.richTextTextStyle,
      displaySmall: ManageTextStyle.richTextButtonTextStyle,
      displayLarge: ManageTextStyle.welcomeTextStyle,
      titleMedium: ManageTextStyle.new4shopTextStyle,
      bodySmall: ManageTextStyle.s14TextStyle400,
      bodyMedium: ManageTextStyle.p14TextStyle400,
      headlineMedium: ManageTextStyle.s32TextStyle700,
      labelSmall: ManageTextStyle.s10TextStyle700,
    ),
    appBarTheme: const AppBarTheme(
      elevation: Constants.elevationAppBar,
      backgroundColor: ManageColors.transparent,
      centerTitle: true,
    ),
  );
}
