import 'package:flutter/material.dart';
import 'package:islamii/config/navigation/routes.dart';
import '../../features/home/presentation/home_screen.dart';
import '../../features/onboarding/presentation/onboarding_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.onboarding:
        return MaterialPageRoute(builder: (context) => Onboarding());
      case AppRoutes.home:
      // Replace this with your actual Login or Home Screen widget
        return MaterialPageRoute(builder: (context) =>HomeScreen());
      default:
        return MaterialPageRoute(builder: (context) => Onboarding());
    }
  }
}