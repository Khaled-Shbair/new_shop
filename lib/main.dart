import 'package:flutter/material.dart';
import '../core/resources/manage_routes.dart';
import 'features/splash/presentation/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: ManageRoutes.splashScreen,
      routes: {
        ManageRoutes.splashScreen: (context) => const SplashScreen(),
      },
    );
  }
}
