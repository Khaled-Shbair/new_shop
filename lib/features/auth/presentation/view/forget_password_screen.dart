import '../../../../core/resources/manage_heights.dart';
import '../../../../core/resources/manage_colors.dart';
import '../../../../core/resources/manage_widths.dart';
import '../../../../core/widgets/my_image_logo.dart';
import '../../../../core/widgets/my_text_field.dart';
import '../../controller/forget_password_getx.dart';
import '../../../../core/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ManageColors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: ManageColors.c4,
        title: Text(
          'forgot_password'.tr.toUpperCase(),
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: GetBuilder<ForgetPasswordGetX>(
        init: ForgetPasswordGetX.to,
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
              MyTextField(
                keyboard: TextInputType.emailAddress,
                label: 'write_your_email'.tr,
                controller: controller.email,
                bottom: ManageHeights.h54,
                top: ManageHeights.h74,
              ),
              MyButton(
                onPressed: controller.forgetPassword,
                start: ManageWidths.w10,
                end: ManageWidths.w10,
                text: 'send'.tr,
              ),
            ],
          );
        },
      ),
    );
  }
}
