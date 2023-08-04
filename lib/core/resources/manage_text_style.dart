import 'package:flutter/material.dart';

import 'manage_colors.dart';
import 'manage_fonts_sizes.dart';
import 'manage_fonts_weights.dart';
import 'manage_heights.dart';

class ManageTextStyle {
  static TextStyle appBarTitleTextStyle = const TextStyle(
    color: ManageColors.secondaryColor,
    fontWeight: ManageFontsWeights.w700,
    fontSize: ManageFontsSizes.s18,
  );

  //onboarding screens TextStyle
  static TextStyle onboardingTitleTextStyle = const TextStyle(
    fontSize: ManageFontsSizes.s26,
    color: ManageColors.secondaryColor,
    fontWeight: ManageFontsWeights.w700,
  );
  static TextStyle onboardingSubtitleTextStyle = const TextStyle(
    fontSize: ManageFontsSizes.s18,
    color: ManageColors.secondaryColor,
    fontWeight: ManageFontsWeights.w400,
  );

  //auth screens TextStyle
  static TextStyle richTextTextStyle = const TextStyle(
    color: ManageColors.secondaryColor,
    fontSize: ManageFontsSizes.s16,
    fontWeight: ManageFontsWeights.w400,
  );
  static TextStyle richTextButtonTextStyle = const TextStyle(
    color: ManageColors.primaryColor,
    fontSize: ManageFontsSizes.s16,
    fontWeight: ManageFontsWeights.w400,
  );

  static TextStyle welcomeTextStyle = const TextStyle(
    color: ManageColors.white,
    fontSize: ManageFontsSizes.s24,
    fontWeight: ManageFontsWeights.w400,
  );
  static TextStyle new4shopTextStyle = const TextStyle(
    height: ManageHeights.h1,
    color: ManageColors.white,
    fontSize: ManageFontsSizes.s36,
    fontWeight: ManageFontsWeights.w700,
  );
  static TextStyle s14TextStyle400 = const TextStyle(
    color: ManageColors.secondaryColor,
    fontSize: ManageFontsSizes.s14,
    fontWeight: ManageFontsWeights.w400,
  );

  static TextStyle p14TextStyle400 = const TextStyle(
    color: ManageColors.primaryColor,
    fontSize: ManageFontsSizes.s14,
    fontWeight: ManageFontsWeights.w400,
  );
  static TextStyle s32TextStyle700 = const TextStyle(
    color: ManageColors.secondaryColor,
    fontWeight: ManageFontsWeights.w700,
    fontSize: ManageFontsSizes.s32,
  );
  static TextStyle s10TextStyle700 = const TextStyle(
    color: ManageColors.secondaryColor,
    fontWeight: ManageFontsWeights.w700,
    fontSize: ManageFontsSizes.s8,
  );
  static TextStyle s18TextStyle700 = TextStyle(
    color: ManageColors.secondaryColorWithOpacity50,
    fontWeight: ManageFontsWeights.w700,
    fontSize: ManageFontsSizes.s18,
  );


}
