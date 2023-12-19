import 'package:flutter/material.dart';
import 'package:takhaty/features/layout/screens/user_bottom_navigation_screen.dart';
import 'package:takhaty/features/onboarding/screens/onboarding_screen.dart';
import 'package:takhaty/features/splash/screens/splash_screen.dart';

import '../../features/home/screens/home_screen.dart';

class AppRouter {
  static final RouteObserver<ModalRoute<void>> routeObserver =
      RouteObserver<ModalRoute<void>>();

  static const String splashScreen = '/';
  static const String onboardingScreen = '/onboardingScreen';
  static const String userBottomNavigationScreen =
      '/UserBottomNavigationScreen';

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // region Splash
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case userBottomNavigationScreen:
        return MaterialPageRoute(
            builder: (_) => const UserBottomNavigationScreen());
      case onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      // endregion
    }
    return null;
  }
}
