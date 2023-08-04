import '../../../../core/resources/manage_heights.dart';
import '../../../../core/resources/manage_colors.dart';
import '../../../../core/resources/manage_widths.dart';
import '../../../../core/widgets/my_image_logo.dart';
import '../../../../core/widgets/my_text_field.dart';
import '../../controller/change_password_getx.dart';
import '../../../../core/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ManageColors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: ManageColors.c4,
        title: Text(
          'change_password'.tr.toUpperCase(),
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: GetBuilder<ChangePasswordGetX>(
        init: ChangePasswordGetX.to,
        builder: (controller) {
          return ListView(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsetsDirectional.only(
              start: ManageWidths.w50,
              end: ManageWidths.w50,
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
                start: ManageWidths.w10,
                end: ManageWidths.w10,
                text: 'save'.tr,
              ),
            ],
          );
        },
      ),
    );
  }
}
