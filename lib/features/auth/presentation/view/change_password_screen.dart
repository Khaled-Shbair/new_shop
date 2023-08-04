import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/manage_colors.dart';
import '../../../../core/resources/manage_fonts_sizes.dart';
import '../../../../core/resources/manage_fonts_weights.dart';
import '../../../../core/resources/manage_heights.dart';
import '../../../../core/resources/manage_widths.dart';
import '../../../../core/widgets/my_button.dart';
import '../../../../core/widgets/my_image_logo.dart';
import '../../../../core/widgets/my_text_field.dart';
import '../../controller/change_password_getx.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ManageColors.white,

      appBar: AppBar(
        backgroundColor: ManageColors.c4,
        title: Text(
          'change_password'.tr.toUpperCase(),
          style: const TextStyle(
            color: ManageColors.secondaryColor,
            fontWeight: ManageFontsWeights.w700,
            fontSize: ManageFontsSizes.s18,
          ),
        ),
      ),
      body: GetBuilder<ChangePasswordGetX>(
        init: ChangePasswordGetX.to,
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
              const SizedBox(height: ManageHeights.h74),
              MyTextField(
                keyboard: TextInputType.visiblePassword,
                label: 'old_password'.tr,
                controller: controller.oldPassword,
                bottom: ManageHeights.h34,
              ),
              MyTextField(
                keyboard: TextInputType.visiblePassword,
                label: 'new_password'.tr,
                controller: controller.newPassword,
                bottom: ManageHeights.h34,
              ),
              MyTextField(
                keyboard: TextInputType.visiblePassword,
                label: 'confirm_new_password'.tr,
                controller: controller.confirmNewPassword,
                bottom: ManageHeights.h44,
              ),
              MyButton(
                onPressed: controller.changePassword,
                start: ManageWidth.w10,
                end: ManageWidth.w10,
                text: 'save'.tr,
              ),
            ],
          );
        },
      ),
    );
  }
}
