import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../core/resources/manage_assets.dart';
import '../../../../core/resources/manage_colors.dart';
import '../../../../core/resources/manage_fonts_sizes.dart';
import '../../../../core/resources/manage_fonts_weights.dart';
import '../../../../core/resources/manage_heights.dart';
import '../../../../core/resources/manage_routes.dart';
import '../../../../core/resources/manage_widths.dart';
import '../../../../core/widgets/icon_hide_password.dart';
import '../../../../core/widgets/my_button.dart';
import '../../../../core/widgets/my_image_logo.dart';
import '../../../../core/widgets/my_text_field.dart';
import '../../controller/sign_in_getx.dart';
import '../widgets/my_rich_text.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ManageColors.white,

      appBar: AppBar(),
      body: GetX<SignInGetX>(
        init: SignInGetX.to,
        builder: (controller) {
          return ListView(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsetsDirectional.only(
              start: ManageHeights.h50,
              end: ManageHeights.h50,
              top: ManageHeights.h40,
            ),
            children: [
              const MyImageLogo(),
              const SizedBox(height: ManageHeights.h50),
              Text(
                'sign_in'.tr.toUpperCase(),
                style: const TextStyle(
                  color: ManageColors.secondaryColor,
                  fontWeight: ManageFontsWeights.w700,
                  fontSize: ManageFontsSizes.s32,
                ),
              ),
              MyTextField(
                keyboard: TextInputType.emailAddress,
                top: ManageHeights.h34,
                label: 'email'.tr,
                controller: controller.email,
              ),
              MyTextField(
                keyboard: TextInputType.visiblePassword,
                top: ManageHeights.h30,
                label: 'password'.tr,
                controller: controller.password,
                obscureText: controller.statusObscureText,
                suffixIcon: IconHidePassword(
                  onPressed: controller.changeStatusObscureText,
                  status: controller.statusObscureText,
                ),
              ),
              const SizedBox(height: ManageHeights.h10),
              ListTile(
                contentPadding: EdgeInsetsDirectional.zero,
                horizontalTitleGap: 0,
                leading: Checkbox(
                  value: controller.rememberMe,
                  onChanged: (v) {
                    controller.rememberMe = v!;
                  },
                  checkColor: ManageColors.white,
                  activeColor: ManageColors.primaryColor,
                  side: const BorderSide(
                    width: 2,
                    color: ManageColors.primaryColor,
                  ),
                ),
                title: Text(
                  'remember_me'.tr,
                  style: const TextStyle(
                    color: ManageColors.secondaryColor,
                    fontSize: ManageFontsSizes.s14,
                    fontWeight: ManageFontsWeights.w400,
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  alignment: AlignmentDirectional.centerEnd,
                  padding: EdgeInsetsDirectional.zero,
                ),
                onPressed: () {
                  Get.toNamed(ManageRoutes.forgotPasswordScreen);
                },
                child: Text(
                  'forgot_your_password'.tr,
                  style: const TextStyle(
                    color: ManageColors.primaryColor,
                    fontSize: ManageFontsSizes.s14,
                    fontWeight: ManageFontsWeights.w400,
                  ),
                ),
              ),
              MyButton(
                onPressed: controller.signIn,
                bottom: ManageHeights.h50,
                text: 'sign_in'.tr,
              ),
              Align(
                alignment: AlignmentDirectional.center,
                child: MyRichText(
                  textQuestion: 'do_not_have_an_account'.tr,
                  textButton: 'sign_up'.tr,
                  recognizer: controller.recognizer,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
