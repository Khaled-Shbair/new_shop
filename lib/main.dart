import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/resources/manage_routes.dart';
import 'binding.dart';
import 'features/onboarding/presentation/view/onboarding_screen.dart';
import 'features/splash/presentation/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialBinding: Binding(),
      initialRoute: ManageRoutes.splashScreen,
      routes: {
        ManageRoutes.splashScreen: (context) => const SplashScreen(),
        ManageRoutes.onboardingScreen: (context) => const OnboardingScreen(),
      },
    );
  }
}
