import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/binding.dart';
import 'languages/translation.dart';

//
import '../core/resources/manage_routes.dart';
import 'features/auth/presentation/view/sign_in_screen.dart';
import 'features/auth/presentation/view/sign_up_screen.dart';
import 'features/auth/presentation/view/welcome_screen.dart';
import 'features/onboarding/presentation/view/onboarding_screen.dart';
import 'features/splash/presentation/view/splash_screen.dart';
import 'features/auth/presentation/view/forget_password_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Translation(),
      locale: const Locale('en'),
      fallbackLocale: const Locale('en'),
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialBinding: Binding(),
      initialRoute: ManageRoutes.splashScreen,
      routes: {
        ManageRoutes.splashScreen: (context) => const SplashScreen(),
        ManageRoutes.onboardingScreen: (context) => const OnboardingScreen(),
        ManageRoutes.welcomeScreen: (context) => const WelcomeScreen(),
        ManageRoutes.signInScreen: (context) => const SignInScreen(),
        ManageRoutes.signUpScreen: (context) => const SignUpScreen(),
        ManageRoutes.forgotPasswordScreen: (context) =>
            const ForgetPasswordScreen(),
      },
    );
  }
}
