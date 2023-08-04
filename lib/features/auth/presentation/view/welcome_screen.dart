import '../../../../core/resources/manage_heights.dart';
import '../../../../core/resources/manage_assets.dart';
import '../../../../core/resources/manage_colors.dart';
import '../../../../core/resources/manage_routes.dart';
import '../../../../core/resources/manage_widths.dart';
import '../../../../core/widgets/my_image_logo.dart';
import '../../../../core/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ManageColors.white,
      resizeToAvoidBottomInset: true,
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Image.asset(
            ManageAssets.welcomeBackground,
            fit: BoxFit.cover,
            width: ManageWidths.infinity,
            filterQuality: FilterQuality.high,
          ),
          Container(
            width: ManageWidths.infinity,
            height: ManageHeights.infinity,
            decoration: BoxDecoration(
              color: ManageColors.blackWithOpacity70,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const MyImageLogo(isWelcomeLogo: true),
              const SizedBox(height: ManageHeights.h120),
              Text(
                'welcome_to'.tr.toUpperCase(),
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Text(
                'new4shop'.tr.toUpperCase(),
                style: Theme.of(context).textTheme.titleMedium,
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
