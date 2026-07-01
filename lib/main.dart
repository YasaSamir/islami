import 'package:flutter/material.dart';
import 'package:islamii/features/onboarding/presentation/onboarding_screen.dart';

import 'config/navigation/app_router.dart';
import 'config/navigation/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.onboarding,
      onGenerateRoute: AppRouter.onGenerateRoute,

      home: Onboarding(),
    );
  }
}
