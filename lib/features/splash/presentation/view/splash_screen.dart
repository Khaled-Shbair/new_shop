import '../../../../core/resources/manage_assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import '../../splash_screen_getx.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashScreenGetX.to;
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SvgPicture.asset(
            ManageAssets.backgroundImage,
            fit: BoxFit.cover,
          ),
          SvgPicture.asset(
            ManageAssets.ellipseImage,
          ),
          SvgPicture.asset(
            ManageAssets.logoImage,
          ),
        ],
      ),
    );
  }
}
