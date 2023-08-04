import '../resources/manage_heights.dart';
import '../resources/manage_widths.dart';
import '../resources/manage_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyImageLogo extends StatelessWidget {
  const MyImageLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      ManageAssets.logoImage,
      width: ManageWidth.w86,
      height: ManageHeights.h105,
    );
  }
}
