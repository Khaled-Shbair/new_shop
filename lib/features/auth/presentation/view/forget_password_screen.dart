import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_shop/core/resources/manage_colors.dart';
import 'package:new_shop/core/resources/manage_fonts_sizes.dart';
import 'package:new_shop/core/resources/manage_fonts_weights.dart';
import 'package:new_shop/core/widgets/my_button.dart';

import '../../../../core/resources/manage_heights.dart';
import '../../../../core/resources/manage_widths.dart';
import '../../../../core/widgets/my_image_logo.dart';
import '../../../../core/widgets/my_text_field.dart';
import '../../controller/forget_password_getx.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ManageColors.white,

      appBar: AppBar(
        backgroundColor: ManageColors.c4,
        title: Text(
          'forgot_password'.tr.toUpperCase(),
          style: const TextStyle(
            color: ManageColors.secondaryColor,
            fontWeight: ManageFontsWeights.w700,
            fontSize: ManageFontsSizes.s18,
          ),
        ),
      ),
      body: GetBuilder<ForgetPasswordGetX>(
        init: ForgetPasswordGetX.to,
        builder: (controller) {
          return ListView(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsetsDirectional.only(
              start: ManageWidth.w50,
              end: ManageWidth.w50,
              top: ManageHeights.h54,
            ),
            children: [
              const MyImageLogo(),
              MyTextField(
                keyboard: TextInputType.emailAddress,
                label: 'write_your_email'.tr,
                controller: controller.email,
                bottom: ManageHeights.h54,
                top: ManageHeights.h74,
              ),
              MyButton(
                onPressed: controller.forgetPassword,
                start: ManageWidth.w10,
                end: ManageWidth.w10,
                text: 'send'.tr,
              ),
            ],
          );
        },
      ),
    );
  }
}
