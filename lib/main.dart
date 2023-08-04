import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/binding.dart';
import 'core/resources/manage_theme.dart';
import 'languages/translation.dart';

//
import '../core/resources/manage_routes.dart';
import 'features/auth/presentation/view/sign_in_screen.dart';
import 'features/auth/presentation/view/sign_up_screen.dart';
import 'features/auth/presentation/view/welcome_screen.dart';
import 'features/onboarding/presentation/view/onboarding_screen.dart';
import 'features/splash/presentation/view/splash_screen.dart';
import 'features/auth/presentation/view/forget_password_screen.dart';
import 'features/auth/presentation/view/change_password_screen.dart';
import 'features/home/presentation/view/home_screen.dart';

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
      theme: ManageTheme.theme,
      initialBinding: Binding(),
      initialRoute: ManageRoutes.homeScreen,
      routes: {
        ManageRoutes.splashScreen: (context) => const SplashScreen(),
        ManageRoutes.onboardingScreen: (context) => const OnboardingScreen(),
        ManageRoutes.welcomeScreen: (context) => const WelcomeScreen(),
        ManageRoutes.signInScreen: (context) => const SignInScreen(),
        ManageRoutes.signUpScreen: (context) => const SignUpScreen(),
        ManageRoutes.forgotPasswordScreen: (context) =>
            const ForgetPasswordScreen(),
        ManageRoutes.changePasswordScreen: (context) =>
            const ChangePasswordScreen(),
        ManageRoutes.homeScreen: (context) => const HomeScreen(),
      },
    );
  }
}
