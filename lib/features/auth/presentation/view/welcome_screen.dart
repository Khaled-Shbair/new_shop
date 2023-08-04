import 'package:new_shop/core/resources/manage_fonts_weights.dart';
import 'package:new_shop/core/resources/manage_fonts_sizes.dart';
import '../../../../core/resources/manage_heights.dart';
import '../../../../core/resources/manage_assets.dart';
import '../../../../core/resources/manage_colors.dart';
import '../../../../core/resources/manage_routes.dart';
import '../../../../core/resources/manage_widths.dart';
import 'package:new_shop/core/widgets/my_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ManageColors.white,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Image.asset(
            ManageAssets.welcomeBackground,
            fit: BoxFit.cover,
            width: ManageWidth.infinity,
            filterQuality: FilterQuality.high,
          ),
          Container(
            width: ManageWidth.infinity,
            height: ManageHeights.infinity,
            decoration: BoxDecoration(
              color: ManageColors.blackWithOpacity70,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SvgPicture.asset(
                alignment: AlignmentDirectional.center,
                ManageAssets.logoWelcome,
                width: ManageWidth.w110,
                height: ManageHeights.h130,
              ),
              const SizedBox(height: ManageHeights.h120),
              Text(
                'welcome_to'.tr.toUpperCase(),
                style: const TextStyle(
                  color: ManageColors.white,
                  fontSize: ManageFontsSizes.s24,
                  fontWeight: ManageFontsWeights.w400,
                ),
              ),
              Text(
                'new4shop'.tr.toUpperCase(),
                style: const TextStyle(
                  height: ManageHeights.h1,
                  color: ManageColors.white,
                  fontSize: ManageFontsSizes.s36,
                  fontWeight: ManageFontsWeights.w700,
                ),
              ),
              const SizedBox(height: ManageHeights.h120),
              MyButton(
                text: 'sign_up'.tr,
                onPressed: () {
                  Get.toNamed(ManageRoutes.signUpScreen);
                },
              ),
              MyButton(
                top: ManageHeights.h20,
                color: ManageColors.white,
                text: 'sign_in'.tr,
                colorText: ManageColors.primaryColor,
                onPressed: () {
                  Get.toNamed(ManageRoutes.signInScreen);
                },
              ),
              MyButton(
                text: 'visitor'.tr,
                top: ManageHeights.h20,
                bottom: ManageHeights.h44,
                color: ManageColors.whiteWithOpacity50,
                onPressed: () {
                  //TODO:Later
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
