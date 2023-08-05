import '../resources/manage_heights.dart';
import '../resources/manage_widths.dart';
import '../resources/manage_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyImageLogo extends StatelessWidget {
  const MyImageLogo({
    this.isWelcomeLogo = false,
    super.key,
  });

  final bool isWelcomeLogo;

  @override
  Widget build(BuildContext context) {
    return isWelcomeLogo
        ? SvgPicture.asset(
            alignment: AlignmentDirectional.center,
            ManageAssets.logoWelcome,
            width: ManageWidths.w110,
            height: ManageHeights.h130,
          )
        : SvgPicture.asset(
            ManageAssets.logoImage,
            width: ManageWidths.w86,
            height: ManageHeights.h105,
          );
  }
}
