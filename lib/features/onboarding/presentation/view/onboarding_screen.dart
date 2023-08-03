import '../../../../core/resources/manage_fonts_weights.dart';
import '../../../../core/resources/manage_icons_sizes.dart';
import '../../../../core/resources/manage_fonts_sizes.dart';
import '../../../../core/resources/manage_heights.dart';
import '../../../../core/resources/manage_assets.dart';
import '../../../../core/resources/manage_colors.dart';
import '../../../../core/resources/manage_routes.dart';
import '../../../../core/resources/manage_widths.dart';
import '../../../../core/widgets/my_button.dart';
import '../widgets/page_view_contents.dart';
import '../../../../core/constants.dart';
import '../widgets/page_indicator.dart';
import 'package:flutter/material.dart';
import '../../onboarding_getx.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<OnboardingGetX>(
      init: OnboardingGetX.to,
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            elevation: Constants.elevationAppBar,
            backgroundColor: ManageColors.transparent,
            leading: Visibility(
              visible: controller.currentPageIndex != 0,
              child: IconButton(
                onPressed: () {
                  controller.pageController!.previousPage(
                    duration: const Duration(
                      seconds: Constants
                          .durationToReturnToPreviousPageInOnboardingScreen,
                    ),
                    curve: Curves.easeInOut,
                  );
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: ManageColors.c1,
                  size: ManageIconsSizes.s28,
                ),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsetsDirectional.only(
              start: ManageWidth.w34,
              end: ManageWidth.w34,
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
                      color: controller.currentPageIndex == 0
                          ? ManageColors.c1
                          : ManageColors.c2,
                    ),
                    PageIndicator(
                      color: controller.currentPageIndex == 1
                          ? ManageColors.c1
                          : ManageColors.c2,
                    ),
                    PageIndicator(
                      color: controller.currentPageIndex == 2
                          ? ManageColors.c1
                          : ManageColors.c2,
                    ),
                    PageIndicator(
                      color: controller.currentPageIndex == 3
                          ? ManageColors.c1
                          : ManageColors.c2,
                    ),
                  ],
                ),
                const SizedBox(height: ManageHeights.h58),
                MyButton(
                  onPressed: () {
                    Get.offAllNamed(ManageRoutes.welcomeScreen);
                    //TODO: Create variable in Shared Preference to un-coming aging to on-boarding screen
                  },
                  start: ManageWidth.w26,
                  end: ManageWidth.w26,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          'start'.tr,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: ManageColors.white,
                            fontSize: ManageFontsSizes.s16,
                            fontWeight: ManageFontsWeights.w400,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: ManageColors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
