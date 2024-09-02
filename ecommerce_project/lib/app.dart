import 'package:ecommerce_project/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/authentication_screen/onboarding_screen/onboarding_screens.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      home: const OnboardingScreens(),
    );
  }
}
