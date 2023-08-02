import '../../core/resources/manage_routes.dart';
import '../../core/constants.dart';
import 'package:get/get.dart';

class SplashScreenGetX extends GetxController {
  static SplashScreenGetX get to => Get.find();

  @override
  void onInit() {
    super.onInit();
    Future.delayed(
      const Duration(seconds: Constants.durationSplashScreen),
      () {
        Get.offAllNamed(ManageRoutes.onboardingScreen);
      },
    );
  }
}
