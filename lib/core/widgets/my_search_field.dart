import '../resources/manage_fonts_weights.dart';
import '../resources/manage_fonts_sizes.dart';
import '../resources/manage_heights.dart';
import '../resources/manage_radius.dart';
import '../resources/manage_widths.dart';
import '../resources/manage_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MySearchField extends StatelessWidget {
  const MySearchField({
    this.controller,
    this.suffixIcon,
    super.key,
  });

  final TextEditingController? controller;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.text,
      cursorColor: ManageColors.primaryColor,
      decoration: InputDecoration(
        contentPadding: const EdgeInsetsDirectional.only(
          top: ManageHeights.h12,
          bottom: ManageHeights.h12,
        ),
        suffixIcon: suffixIcon,
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: ManageWidths.w20),
            Icon(
              Icons.search,
              color: ManageColors.blackWithOpacity34,
            ),
            const SizedBox(width: ManageWidths.w15),
            Container(
              height: 16,
              width: 1,
              color: ManageColors.c5WithOpacity10,
            ),
            const SizedBox(width: ManageWidths.w15),
          ],
        ),
        hintText: 'search'.tr,
        hintStyle: TextStyle(
          color: ManageColors.secondaryColorWithOpacity16,
          fontSize: ManageFontsSizes.s14,
          fontWeight: ManageFontsWeights.w400,
        ),
        filled: true,
        fillColor: ManageColors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            ManageRadius.r50,
          ),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
