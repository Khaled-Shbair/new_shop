import '../../../../core/resources/manage_icons_sizes.dart';
import '../../../../core/resources/manage_heights.dart';
import '../../../../core/resources/manage_assets.dart';
import '../../../../core/resources/manage_colors.dart';
import '../../../../core/resources/manage_routes.dart';
import '../../../../core/resources/manage_widths.dart';
import '../../../../core/widgets/my_button.dart';
import '../../controller/onboarding_getx.dart';
import '../widgets/page_view_contents.dart';
import '../../../../core/constants.dart';
import '../widgets/page_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<OnboardingGetX>(
      init: OnboardingGetX.to,
      builder: (controller) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: ManageColors.white,
          appBar: AppBar(
            elevation: Constants.elevationAppBar,
            backgroundColor: ManageColors.transparent,
            leading: Visibility(
              visible: !controller.currentPage(0),
              child: IconButton(
                onPressed: controller.previousPage,
                icon: const Icon(
                  Icons.arrow_back,
                  color: ManageColors.secondaryColor,
                  size: ManageIconsSizes.s28,
                ),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsetsDirectional.only(
              start: ManageWidths.w34,
              end: ManageWidths.w34,
              bottom: ManageHeights.h34,
              top: ManageHeights.h18,
            ),
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: OnboardingGetX.to.pageController,
                    onPageChanged: (value) {
                      OnboardingGetX.to.currentPageIndex = value;
                    },
                    children: [
                      PageViewContents(
                        image: ManageAssets.onboardingOne,
                        title: 'title_onboarding_one'.tr,
                        subTitle: 'sub_title_onboarding_one'.tr,
                      ),
                      PageViewContents(
                        image: ManageAssets.onboardingTwo,
                        title: 'title_onboarding_two'.tr,
                        subTitle: 'sub_title_onboarding_two'.tr,
                      ),
                      PageViewContents(
                        image: ManageAssets.onboardingThree,
                        title: 'title_onboarding_three'.tr,
                        subTitle: 'sub_title_onboarding_three'.tr,
                      ),
                      PageViewContents(
                        image: ManageAssets.onboardingFour,
                        title: 'title_onboarding_four'.tr,
                        subTitle: 'sub_title_onboarding_four'.tr,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PageIndicator(
                      color: controller.currentPage(0)
                          ? ManageColors.secondaryColor
                          : ManageColors.c1,
                    ),
                    PageIndicator(
                      color: controller.currentPage(1)
                          ? ManageColors.secondaryColor
                          : ManageColors.c1,
                    ),
                    PageIndicator(
                      color: controller.currentPage(2)
                          ? ManageColors.secondaryColor
                          : ManageColors.c1,
                    ),
                    PageIndicator(
                      color: controller.currentPage(3)
                          ? ManageColors.secondaryColor
                          : ManageColors.c1,
                    ),
                  ],
                ),
                const SizedBox(height: ManageHeights.h58),
                MyButton(
                  onPressed: () {
                    Get.offAllNamed(ManageRoutes.welcomeScreen);
                    //TODO: Create variable in Shared Preference to un-coming aging to on-boarding screen
                  },
                  start: ManageWidths.w26,
                  end: ManageWidths.w26,
                  text: 'start'.tr,
                  iconRow: Icons.arrow_forward,
                  isRow: true,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
