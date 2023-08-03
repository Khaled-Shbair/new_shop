import 'features/onboarding/onboarding_getx.dart';
import 'features/splash/splash_screen_getx.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenGetX());
    Get.lazyPut(() => OnboardingGetX());
  }
}
