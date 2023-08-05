import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/manage_colors.dart';
import '../../../../core/resources/manage_fonts_sizes.dart';
import '../../../../core/resources/manage_fonts_weights.dart';
import '../../../../core/resources/manage_heights.dart';
import '../../../../core/resources/manage_radius.dart';

class Department extends StatelessWidget {
  const Department({
    required this.name,
    required this.showMore,
    required this.widget,
    super.key,
  });

  final String name;
  final Function() showMore;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: ManageColors.secondaryColor,
                  fontWeight: ManageFontsWeights.w700,
                  fontSize: ManageFontsSizes.s18,
                ),
              ),
              ElevatedButton(
                onPressed: showMore,
                style: ElevatedButton.styleFrom(
                  backgroundColor: ManageColors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(ManageRadius.r50),
                    side: BorderSide(
                      color: ManageColors.secondaryColorWithOpacity50,
                      width: 2,
                    ),
                  ),
                ),
                child: Text('show_more'.tr),
              ),
            ],
          ),
          const SizedBox(height: ManageHeights.h12),
          widget,
        ],
      ),
    );
  }
}
