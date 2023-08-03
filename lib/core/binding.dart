import '../features/onboarding/controller/onboarding_getx.dart';
import '../features/auth/controller/forget_password_getx.dart';
import '../features/splash/controller/splash_screen_getx.dart';
import '../features/auth/controller/sign_in_getx.dart';
import '../features/auth/controller/sign_up_getx.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenGetX());
    Get.lazyPut(() => OnboardingGetX());
    Get.lazyPut(() => SignUpGetX());
    Get.lazyPut(() => SignInGetX());
    Get.lazyPut(() => ForgetPasswordGetX());
  }
}
