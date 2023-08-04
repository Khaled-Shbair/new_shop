import '../../../../core/resources/manage_fonts_weights.dart';
import '../../../../core/resources/manage_fonts_sizes.dart';
import '../../../../core/resources/manage_heights.dart';
import '../../../../core/resources/manage_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PageViewContents extends StatelessWidget {
  const PageViewContents({
    required this.image,
    required this.title,
    required this.subTitle,
    super.key,
  });

  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          image,
          fit: BoxFit.fitWidth,
          height: ManageHeights.h240,
        ),
        const SizedBox(height: ManageHeights.h90),
        Text(
          title,
          style: const TextStyle(
            fontSize: ManageFontsSizes.s26,
            color: ManageColors.secondaryColor,
            fontWeight: ManageFontsWeights.w700,
          ),
        ),
        const SizedBox(height: ManageHeights.h44),
        SizedBox(
          height: ManageHeights.h78,
          child: Text(
            textAlign: TextAlign.center,
            subTitle,
            style: const TextStyle(
              fontSize: ManageFontsSizes.s18,
              color: ManageColors.secondaryColor,
              fontWeight: ManageFontsWeights.w400,
            ),
          ),
        ),
      ],
    );
  }
}
