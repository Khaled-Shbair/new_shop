import '../../../../core/resources/manage_fonts_weights.dart';
import '../../../../core/resources/manage_fonts_sizes.dart';
import '../../../../core/widgets/icon_hide_password.dart';
import '../../../../core/resources/manage_heights.dart';
import '../../../../core/resources/manage_colors.dart';
import '../../../../core/resources/manage_widths.dart';
import '../../../../core/widgets/my_text_field.dart';
import '../../../../core/widgets/my_button.dart';
import '../../controller/sign_up_getx.dart';
import 'package:flutter/material.dart';
import '../widgets/my_rich_text.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ManageColors.white,

      appBar: AppBar(),
      body: GetX<SignUpGetX>(
        init: SignUpGetX.to,
        builder: (controller) {
          return ListView(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsetsDirectional.only(
              start: ManageWidth.w50,
              end: ManageWidth.w50,
              top: ManageHeights.h40,
            ),
            children: [
              Text(
                'sign_up'.tr.toUpperCase(),
                style: const TextStyle(
                  color: ManageColors.secondaryColor,
                  fontWeight: ManageFontsWeights.w700,
                  fontSize: ManageFontsSizes.s32,
                ),
              ),
              MyTextField(
                top: ManageHeights.h44,
                keyboard: TextInputType.name,
                label: 'username'.tr,
                controller: controller.userName,
              ),
              MyTextField(
                keyboard: TextInputType.emailAddress,
                top: ManageHeights.h20,
                label: 'email'.tr,
                controller: controller.email,
              ),
              MyTextField(
                keyboard: TextInputType.visiblePassword,
                top: ManageHeights.h20,
                label: 'password'.tr,
                controller: controller.password,
                obscureText: controller.statusObscureText,
                suffixIcon: IconHidePassword(
                  onPressed: controller.changeStatusObscureText,
                  status: controller.statusObscureText,
                ),
              ),
              MyTextField(
                keyboard: TextInputType.visiblePassword,
                top: ManageHeights.h20,
                bottom: ManageHeights.h30,
                label: 'confirm_password'.tr,
                controller: controller.confirmPassword,
                obscureText: controller.statusObscureText,
                suffixIcon: IconHidePassword(
                  onPressed: controller.changeStatusObscureText,
                  status: controller.statusObscureText,
                ),
              ),
              MyRichText(
                textButton: 'sign_in'.tr,
                textQuestion: 'already_have_account'.tr,
                recognizer: controller.recognizer,
              ),
              MyButton(
                onPressed: controller.signUp,
                top: ManageHeights.h30,
                text: 'sign_up'.tr,
              ),
            ],
          );
        },
      ),
    );
  }
}
