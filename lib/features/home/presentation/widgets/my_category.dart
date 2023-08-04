import '../../../../core/resources/manage_heights.dart';
import '../../../../core/resources/manage_colors.dart';
import '../../../../core/resources/manage_radius.dart';
import '../../../../core/resources/manage_widths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCategory extends StatelessWidget {
  const MyCategory({
    required this.image,
    required this.text,
    super.key,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ManageWidths.w114,
      padding: const EdgeInsetsDirectional.only(
        start: ManageWidths.w10,
        end: ManageWidths.w10,
        bottom: ManageHeights.h14,
        top: ManageHeights.h14,
      ),
      decoration: BoxDecoration(
        color: ManageColors.white,
        borderRadius: BorderRadius.circular(ManageRadius.r16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(image),
          const SizedBox(height: ManageHeights.h10),
          Text(
            text,
            style: Theme.of(context).textTheme.labelSmall,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
