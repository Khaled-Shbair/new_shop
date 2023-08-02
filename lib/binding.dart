import 'package:get/get.dart';

import 'features/splash/splash_screen_getx.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashScreenGetX());
  }
}
