import '../../../../core/resources/manage_assets.dart';
import '../../../../core/resources/manage_colors.dart';
import '../../../../core/widgets/my_image_logo.dart';
import '../../controller/splash_screen_getx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashScreenGetX.to;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ManageColors.white,
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
          const MyImageLogo(),
        ],
      ),
    );
  }
}
