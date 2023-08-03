import 'package:flutter/material.dart';

import '../resources/manage_colors.dart';
import '../resources/manage_fonts_sizes.dart';
import '../resources/manage_fonts_weights.dart';
import '../resources/manage_heights.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    required this.controller,
    required this.keyboard,
    required this.label,
    this.obscureText = false,
    this.suffixIcon,
    this.top = 0,
    this.bottom = 0,
    super.key,
  });

  final TextEditingController controller;
  final String label;
  final bool obscureText;
  final Widget? suffixIcon;
  final double top;
  final double bottom;
  final TextInputType keyboard;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        top: top,
        bottom: bottom,
      ),
      child: TextField(
        keyboardType: keyboard,
        controller: controller,
        cursorColor: ManageColors.primaryColor,
        obscureText: obscureText,
        style: const TextStyle(
          color: ManageColors.c1,
          fontSize: ManageFontsSizes.s16,
          fontWeight: ManageFontsWeights.w400,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsetsDirectional.only(
            bottom: ManageHeights.h18,
            top: ManageHeights.h6,
          ),
          suffixIcon: suffixIcon,
          labelText: label,
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ManageColors.blackWithOpacity10,
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: ManageColors.primaryColor,
            ),
          ),
          labelStyle: const TextStyle(
            color: ManageColors.c4,
            fontSize: ManageFontsSizes.s16,
            fontWeight: ManageFontsWeights.w400,
          ),
        ),
      ),
    );
  }
}
